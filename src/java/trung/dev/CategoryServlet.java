package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import trung.dev.data.dao.CategoryDao;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.ProductDao;
import trung.dev.data.model.Category;
import trung.dev.data.model.Product;
import trung.dev.util.Constants;

public class CategoryServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);

        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();

        String property = request.getParameter("property");
        String order = request.getParameter("order");

        // Default values for sorting
        if (property == null || order == null) {
            property = "name";
            order = "ASC";
        }

        // Get all products based on filtering
        List<Product> allProducts = productDao.filter(categoryId, property, order);

        // Pagination logic
        int page = 1; // Default to the first page
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            try {
                page = Integer.parseInt(pageParam);
            } catch (NumberFormatException e) {
                page = 1; // If the page parameter is invalid, default to page 1
            }
        }

        int total = allProducts.size(); // Total products
        int numberPage = (int) Math.ceil((double) total / Constants.PER_PAGE); // Calculate total number of pages

        // Ensure page is within bounds
        page = Math.max(1, Math.min(page, numberPage));

        int start = (page - 1) * Constants.PER_PAGE; // Starting index for the current page
        List<Product> productList = allProducts.subList(start, Math.min(start + Constants.PER_PAGE, total)); // Get products for the current page

        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        Category category = categoryDao.find(categoryId);

        // Set attributes for JSP
        request.setAttribute("category", category);
        request.setAttribute("productList", productList);
        request.setAttribute("filterProperty", property);
        request.setAttribute("filterOrder", order);
        request.setAttribute("total", total); // Total products
        request.setAttribute("page", page); // Current page
        request.setAttribute("numberPage", numberPage); // Total number of pages

        request.getRequestDispatcher("category.jsp").include(request, response);
    }
}
