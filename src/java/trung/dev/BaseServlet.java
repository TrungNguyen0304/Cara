/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package trung.dev;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import trung.dev.data.dao.CategoryDao;
import trung.dev.data.dao.Database;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.model.Category;

/**
 *
 * @author asus
 */
public class BaseServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        DatabaseDao.init(new Database());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();
        req.setAttribute("categoryList", categoryList);
    }

}
