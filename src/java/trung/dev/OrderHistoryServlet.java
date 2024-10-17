package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.OrderDao;
import trung.dev.data.model.Order;
import trung.dev.data.model.User;

public class OrderHistoryServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("LoginServlet");
            return;
        }

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        List<Order> orders = orderDao.findByUser(user.getId());

        request.setAttribute("orders", orders);
        request.getRequestDispatcher("orderhistory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Xử lý POST nếu cần
    }
}
