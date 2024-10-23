package trung.dev.admin.product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.List;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.CategoryDao;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.ProductDao;
import trung.dev.data.model.Category;
import trung.dev.data.model.Product;

@MultipartConfig
public class CreateProductServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();

        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/product/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price;
        int quantity;
        int categoryId;

        // Validate input data
        try {
            price = Double.parseDouble(request.getParameter("price"));
            quantity = Integer.parseInt(request.getParameter("quantity"));
            categoryId = Integer.parseInt(request.getParameter("categoryId"));
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid price, quantity, or category ID");
            doGet(request, response);
            return;
        }

        // Handle the file upload
        Part filePart = request.getPart("thumbnail");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads"; // Use File.separator for compatibility

        // Create upload directory if it doesn't exist
        File fileUploadDir = new File(uploadPath);
        if (!fileUploadDir.exists() && !fileUploadDir.mkdir()) {
            request.setAttribute("errorMessage", "Failed to create upload directory");
            doGet(request, response);
            return;
        }

        // Save the file
        File file = new File(fileUploadDir, fileName);
        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException e) {
            request.setAttribute("errorMessage", "Failed to upload file: " + e.getMessage());
            doGet(request, response);
            return;
        }

        // Create the product
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = new Product(name, description, "uploads/" + fileName, price, quantity, categoryId);
        productDao.insert(product);

        // Redirect to the product index page
        response.sendRedirect("IndexProductServlet");
    }
}
