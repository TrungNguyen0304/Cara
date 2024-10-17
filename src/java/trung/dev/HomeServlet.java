/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

/**
 *
 * @author asus
 */
public class HomeServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> hotProductList = productDao.hot(Constants.NUMBER_LIMIT);
        List<Product> newsProductList = productDao.news(Constants.NUMBER_LIMIT);
        
        request.setAttribute("hotProductList", hotProductList);
        request.setAttribute("newsProductList", newsProductList);
        
         CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();
         request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("home.jsp").include(request, response);
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }
}