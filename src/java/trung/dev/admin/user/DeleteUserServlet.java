/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package trung.dev.admin.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;


/**
 *
 * @author asus
 */

public class DeleteUserServlet extends BaseAdminServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        userDAO.delete(userId);
        
        response.sendRedirect("IndexUserServlet");
        
    }
}