package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.model.User;
import trung.dev.util.EmailUtil;

public class RegisterServlet extends BaseServlet {

    private static final String EMAIL_PATTERN = "^[a-zA-Z0-9._%+-]+@gmail\\.com$";
    private static final Pattern pattern = Pattern.compile(EMAIL_PATTERN);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        List<String> errors = new ArrayList<>();

        // Validate email
        if (!isValidEmail(email)) {
            errors.add("Email must be a valid Gmail address ending with @gmail.com");
        }

        // Validate password
        if (!isValidPassword(password)) {
            errors.add("Password must contain at least one uppercase letter");
        }

        if (!errors.isEmpty()) {
            session.setAttribute("errors", errors);
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        User existingUser = userDAO.find(email);

        // Check if the email already exists
        if (existingUser != null) {
            session.setAttribute("error", "Email đã tồn tại.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // Hash the password and generate a verification token
        String hashedPassword = PasswordUtilServlet.hashPassword(password);
        String verificationToken = UUID.randomUUID().toString();

        User newUser = new User(email, hashedPassword, "user", verificationToken, false);
        boolean userInserted = userDAO.insert(newUser);

        if (!userInserted) {
            errors.add("Registration failed. Please try again.");
            session.setAttribute("errors", errors);
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // Send verification email
        String verificationLink = request.getRequestURL().toString().replace(request.getRequestURI(), "")
                + "/verify?token=" + verificationToken;
        EmailUtil.sendVerificationEmail(email, verificationLink);

        // Redirect to verification page
        session.setAttribute("email", email); // Store the email for later use
        response.sendRedirect("verification.jsp");
    }

    private boolean isValidEmail(String email) {
        return pattern.matcher(email).matches();
    }

    private boolean isValidPassword(String password) {
        return password.chars().anyMatch(Character::isUpperCase);
    }
}
