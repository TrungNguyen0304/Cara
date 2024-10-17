package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.ProductDao;
import trung.dev.data.model.Product;
import trung.dev.util.Constants;

public class ShopServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();

        // Retrieve filter parameters
        String property = request.getParameter("property");
        String order = request.getParameter("order");
        List<Product> productList;

        // Fetch filtered product list if property and order are provided
        if (property != null && order != null) {
            productList = productDao.filterShop(property, order);
        } else {
            productList = productDao.findAll();
        }

        int page = 1; // Default to the first page
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            try {
                page = Integer.parseInt(pageParam);
            } catch (NumberFormatException e) {
                page = 1; // If the page parameter is invalid, default to page 1
            }
        }

        // Calculate total and number of pages
        int total = productList.size();
        int numberPage = (int) Math.ceil((double) total / Constants.PER_PAGE);

        // Ensure page is within valid range
        page = Math.max(1, Math.min(page, numberPage));

        // Paginate the product list
        int start = (page - 1) * Constants.PER_PAGE;
        int end = Math.min(start + Constants.PER_PAGE, total);
        if (start < total) {
            productList = productList.subList(start, end);
        } else {
            productList = List.of(); // No products to show
        }

        // Set attributes for the JSP
        request.setAttribute("productList", productList);
        request.setAttribute("total", total);
        request.setAttribute("page", page);
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("filterProperty", property);
        request.setAttribute("filterOrder", order);

        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Implement POST handling if necessary
    }
}
