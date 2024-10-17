/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.OrderDao;
import trung.dev.data.dao.OrderItemDao;
import trung.dev.data.model.Order;
import trung.dev.data.model.OrderItem;
import trung.dev.data.model.User;
import trung.dev.util.StringHelper;

/**
 *
 * @author asus
 */
public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("LoginServlet");
        } else {
            proccessCheckout(request, user);
            response.sendRedirect("CartServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void proccessCheckout(HttpServletRequest request, User user) {
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        String code = StringHelper.randomString(10);
        Order order = new Order(code, Order.PENDING, user.getId());

        // Insert order into the database
        orderDao.insert(order);

        // Retrieve the order from the database
        order = orderDao.findByCode(code);
        if (order == null) {
            HttpSession session = request.getSession();
            session.setAttribute("message", "Checkout failed, order could not be created.");
            return;
        }

        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
        if (cart != null) {
            for (OrderItem orderItem : cart) {
                orderItem.setOrderId(order.getId());
                orderItemDao.insert(orderItem);
            }
        }

        session.setAttribute("message", "Checkout successful.");
        session.removeAttribute("cart");
    }
}
