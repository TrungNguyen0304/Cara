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
import java.util.ArrayList;
import java.util.List;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.ProductDao;
import trung.dev.data.model.OrderItem;
import trung.dev.data.model.Product;
import trung.dev.util.Constants;
import trung.dev.util.Helper;

/**
 *
 * @author asus
 */
public class CartServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        HttpSession session = request.getSession();

        // Check if user is logged in
        if (session.getAttribute("user") == null) { // Replace "user" with your actual session attribute for logged-in status
            response.sendRedirect("login.jsp"); // Redirect to login page
            return;
        }
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> newsProductList = productDao.news(Constants.NUMBER_NEW);

        if (cart == null) {
            cart = new ArrayList<>();
        }

        // Calculate cart total and total quantity
        int totalQuantity = 0;
        for (OrderItem item : cart) {

            totalQuantity += item.getQuantity();
        }

        // Set attributes for JSP
        request.setAttribute("newsProductList", newsProductList);

        request.setAttribute("cart", cart);
        request.setAttribute("total", Helper.total(cart));
        request.setAttribute("totalQuantity", totalQuantity);

        request.getRequestDispatcher("cart.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            // Handle the null case, e.g., log an error or set a default action
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Action parameter is missing");
            return;
        }

        switch (action) {
            case "create":
                createOrder(request);
                break;
            case "update":
                updateOrder(request);
                break;
            case "delete":
                deleteOrder(request);
                break;
            default:
                throw new AssertionError("Unexpected action: " + action);
        }

        response.sendRedirect("CartServlet");
    }

    private void createOrder(HttpServletRequest request) {
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int productId = Integer.parseInt(request.getParameter("productId"));
        double price = Double.parseDouble(request.getParameter("price"));

        OrderItem orderItem = new OrderItem(quantity, price, 0, productId);

        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng hay chưa
        boolean isExisInCart = false;
        for (OrderItem ord : cart) {
            if (ord.getProductId() == productId) {
                ord.setQuantity(ord.getQuantity() + quantity);
                isExisInCart = true;
                break;
            }
        }

        if (!isExisInCart) {
            cart.add(orderItem);
        }

        // Cập nhật tổng số tiền vào phiên
        double totalAmount = Helper.total(cart);
        session.setAttribute("cart", cart);
        session.setAttribute("totalAmount", totalAmount); // Lưu tổng số tiền vào phiên
    }

    private void updateOrder(HttpServletRequest request) {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        HttpSession session = request.getSession();

        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        if (cart != null && cart.isEmpty() == false) {
            for (OrderItem ord : cart) {
                if (ord.getProductId() == productId) {
                    ord.setQuantity(quantity);
                }
            }
        }
        session.setAttribute("cart", cart);
    }

    private void deleteOrder(HttpServletRequest request) {
        int productId = Integer.parseInt(request.getParameter("productId"));
        HttpSession session = request.getSession();

        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");
        if (cart != null) {
            for (int i = 0; i < cart.size(); i++) {
                OrderItem ord = cart.get(i);
                if (ord.getProductId() == productId) {
                    cart.remove(ord);
                    break; // break after removing to avoid ConcurrentModificationException
                }
            }
        }
        session.setAttribute("cart", cart);
    }
}
