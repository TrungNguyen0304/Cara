package trung.dev.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import trung.dev.data.dao.DatabaseDao;
import trung.dev.data.dao.OrderDao;
import trung.dev.data.model.Order;
import trung.dev.util.GetDateTime;

public class DashboardServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Check if the user is logged in
        Object user = request.getSession().getAttribute("user"); // Assuming you store user info in session
        if (user == null) {
            // Redirect to login page if not logged in
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return; // Stop further processing
        }

        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        LocalDateTime now = LocalDateTime.now();
        int numberOrderToday = orderDao.countOrderByDay(dtf.format(now));

        List<Order> orderList = orderDao.findAll();
        int numberOrderAll = orderList.size();
        List<Order> orderPendingList = orderDao.findByStatus("pending");

        int numberOrderPending = orderPendingList.size();
        int numberOrderFinished = numberOrderAll - numberOrderPending;

        request.setAttribute("numberOrderToday", numberOrderToday);
        request.setAttribute("numberOrderAll", numberOrderAll);
        request.setAttribute("numberOrderPending", numberOrderPending);
        request.setAttribute("numberOrderFinished", numberOrderFinished);
        request.setAttribute("orderPendingList", orderPendingList);
        request.setAttribute("orderList", orderList);

        // Get the dates for the chart
        List<String> dateList = GetDateTime.get7Date();
        List<Integer> orderByDateList = new ArrayList<>();
        for (String d : dateList) {
            int n = orderDao.countOrderByDay(d);
            orderByDateList.add(n);
        }
        request.setAttribute("dateList", dateList);
        request.setAttribute("orderByDateList", orderByDateList);

        request.getRequestDispatcher("admin/dashboard.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST requests if needed
    }
}
