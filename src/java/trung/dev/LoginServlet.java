package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.model.User;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import trung.dev.data.model.GoogleAccount;
import trung.dev.service.AccountService;

public class LoginServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            response.sendRedirect("login.jsp");
            return;
        }

        OAuth2CallbackServlet gg = new OAuth2CallbackServlet();
        String accessToken = gg.getToken(code);

        if (accessToken == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Retrieve user information
        GoogleAccount acc = gg.getUserInfo(accessToken);

        // Check if the user info is valid
        if (acc != null) {
            HttpSession session = request.getSession();
            AccountService accountService = new AccountService();
            User user = accountService.convertToUser(acc); // Convert GoogleAccount to User

            // Check if the user already exists in the database
            UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
            User existingUser = userDAO.find(user.getEmail());

            if (existingUser == null) {
                // Save the new user in the database
                userDAO.insert(user);
            } else {
                user = existingUser; // Use the existing user
            }

            session.setAttribute("user", user); // Store User info in the session
            response.sendRedirect("HomeServlet");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Mã hóa mật khẩu bằng MD5
        String hashedPassword = hashPassword(password);

        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        User user = userDAO.find(email, hashedPassword);

        if (user == null) {
            session.setAttribute("error", "Đăng nhập thất bại");
            response.sendRedirect("login.jsp");
            return;
        }

        // Kiểm tra xem người dùng đã được xác minh chưa
        if (!user.isVerified()) {
            session.setAttribute("error", "Email của bạn chưa được xác minh. Vui lòng kiểm tra hộp thư đến.");
            request.getRequestDispatcher("login.jsp");
            return;
        }

        session.setAttribute("user", user);
        if ("admin".equals(user.getRole())) {
            response.sendRedirect("DashboardServlet");
        } else {
            response.sendRedirect("HomeServlet");
        }
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] byteData = md.digest();

            // Chuyển đổi byte sang dạng chuỗi hex
            StringBuilder sb = new StringBuilder();
            for (byte b : byteData) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
