/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package trung.dev.admin.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.model.User;

/**
 *
 * @author asus
 */

public class IndexUserServlet extends BaseAdminServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO userDAO = DatabaseDao.getInstance().getUserDao();
        List<User> userList = userDAO.findAll();
        
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("admin/user/index.jsp").include(request, response);
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }
}