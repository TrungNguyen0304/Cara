package trung.dev.admin.category;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.CategoryDao;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.model.Category;

public class CreateCategoryServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("admin/category/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String thumbnail = request.getParameter("thumbnail");

        HttpSession session = request.getSession();
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();

        if (name == null || name.trim().isEmpty() || thumbnail == null || thumbnail.trim().isEmpty()) {
            session.setAttribute("error", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("admin/category/create.jsp").forward(request, response);
        } else {
            Category category = new Category(name, thumbnail);
            categoryDao.insert(category);
            response.sendRedirect("IndexCategoryServlet");
        }
    }
}
