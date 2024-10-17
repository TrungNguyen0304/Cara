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

        // Handle the file upload
        Part filePart = request.getPart("thumbnail");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + "uploads"; // Ensure this directory exists

        // Save the file
        File fileUploadDir = new File(uploadPath);
        if (!fileUploadDir.exists()) {
            fileUploadDir.mkdir(); // Create directory if it doesn't exist
        }
        File file = new File(fileUploadDir, fileName);
        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        }

        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = new Product(name, description, "uploads/" + fileName, price, quantity, categoryId);
        productDao.insert(product);

        response.sendRedirect("IndexProductServlet");
    }
}
