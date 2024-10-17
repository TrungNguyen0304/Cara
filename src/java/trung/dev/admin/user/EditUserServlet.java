package trung.dev.admin.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.model.User;

public class EditUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        User user = userDAO.find(userId);

        request.setAttribute("user", user);
        request.getRequestDispatcher("admin/user/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        User user = userDAO.find(userId);

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        user.setEmail(email);
        
        // Hash the password using MD5
        if (password != null && !password.isEmpty()) {
            String hashedPassword = hashPassword(password);
            user.setPassword(hashedPassword);
        }

        // Update user role if provided
        if (role != null && !role.isEmpty()) {
            user.setRole(role);
        }

        userDAO.update(user);
        response.sendRedirect("IndexUserServlet");
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(password.getBytes());
            StringBuilder hexString = new StringBuilder();
            for (byte b : messageDigest) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
