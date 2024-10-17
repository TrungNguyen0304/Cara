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
public class EditProductServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = productDao.find(productId);
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();

        request.setAttribute("categoryList", categoryList);
        request.setAttribute("product", product);
        request.getRequestDispatcher("admin/product/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int productId = Integer.parseInt(request.getParameter("productId"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = productDao.find(productId);

        String thumbnailPath = product.getThumbnail(); // Keep the existing thumbnail

        // Handle the file upload
        Part filePart = request.getPart("thumbnail");
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + "uploads";

            File fileUploadDir = new File(uploadPath);
            if (!fileUploadDir.exists()) {
                fileUploadDir.mkdir();
            }

            File file = new File(fileUploadDir, fileName);
            try (InputStream input = filePart.getInputStream()) {
                Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
            }

            thumbnailPath = "uploads/" + fileName; // Update the thumbnail path if a new one is uploaded
        }

        if (product != null) {
            product.setName(name);
            product.setDescription(description);
            product.setThumbnail(thumbnailPath); // Set the thumbnail path
            product.setPrice(price);
            product.setQuantity(quantity);
            product.setCategoryId(categoryId);

            productDao.update(product);
        }

        response.sendRedirect("IndexProductServlet");
    }
}
