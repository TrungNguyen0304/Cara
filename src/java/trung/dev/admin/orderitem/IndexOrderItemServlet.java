package trung.dev.admin.orderitem;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import trung.dev.admin.BaseAdminServlet;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.OrderDao;
import trung.dev.data.dao.OrderItemDao;
import trung.dev.data.model.Order;
import trung.dev.data.model.OrderItem;

/**
 * Servlet to handle displaying the list of orders.
 */
public class IndexOrderItemServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("orderId"));

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        Order order = orderDao.find(orderId);

        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();
        List<OrderItem> orderItemList = orderItemDao.findByOder(orderId);

        request.setAttribute("order", order);
        request.setAttribute("orderItemList", orderItemList);
        request.getRequestDispatcher("admin/orderitem/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST request if needed
    }
}
