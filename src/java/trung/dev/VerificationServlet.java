package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;

/**
 *
 * @author asus
 */
public class VerificationServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String token = request.getParameter("token");
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();

        // Check if the token is valid and verify the user
        boolean isVerified = userDAO.verifyUser(token);

        if (isVerified) {
            // Verification successful
            request.getSession().setAttribute("success", "Xác minh tài khoản thành công! Bạn có thể đăng nhập.");
        } else {
            // Verification failed
            request.getSession().setAttribute("error", "Xác minh không thành công hoặc tài khoản đã được xác minh trước đó.");
        }
        
        // Redirect to login page
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Not used, but can be implemented if needed
    }
}
