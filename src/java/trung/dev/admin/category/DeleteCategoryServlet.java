/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package trung.dev.admin.category;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.CategoryDao;
import trung.dev.data.dao.DatabaseDao;


/**
 *
 * @author asus
 */

public class DeleteCategoryServlet extends BaseAdminServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        categoryDao.delete(categoryId);
        
        response.sendRedirect("IndexCategoryServlet");
        
    }
}