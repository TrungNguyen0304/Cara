package trung.dev.admin.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.model.User;

public class CreateUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("admin/user/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String role = request.getParameter("role");

        HttpSession session = request.getSession();
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        User existingUser = userDAO.find(email);

        // Kiểm tra thông tin nhập vào
        if (email.isEmpty() || password.isEmpty() || repassword.isEmpty() || role.isEmpty()) {
            session.setAttribute("error", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("admin/user/create.jsp").forward(request, response);
            return;
        }

        if (existingUser != null) {
            session.setAttribute("error", "Email đã tồn tại.");
            request.getRequestDispatcher("admin/user/create.jsp").forward(request, response);
            return;
        }

        if (!password.equals(repassword)) {
            session.setAttribute("error", "Mật khẩu không khớp.");
            request.getRequestDispatcher("admin/user/create.jsp").forward(request, response);
            return;
        }

        if (!containsUpperCase(password)) {
            session.setAttribute("error", "Mật khẩu phải chứa ít nhất một chữ cái viết hoa.");
            request.getRequestDispatcher("admin/user/create.jsp").forward(request, response);
            return;
        }

        // Hash the password using MD5
        String hashedPassword = hashPassword(password);

        // Tạo người dùng mới với verified luôn là true
        User newUser = new User(email, hashedPassword, role, null, true);
        userDAO.insertCreate(newUser);
        
        // Chuyển hướng về danh sách người dùng
        response.sendRedirect("IndexUserServlet");
    }

    private boolean containsUpperCase(String password) {
        for (char c : password.toCharArray()) {
            if (Character.isUpperCase(c)) {
                return true;
            }
        }
        return false;
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Error hashing password", e);
        }
    }
}
