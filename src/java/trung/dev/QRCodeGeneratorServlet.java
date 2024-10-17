package trung.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.List;
import trung.dev.data.model.OrderItem;

public class QRCodeGeneratorServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("cart.jsp").include(request, response);
    }

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ownerName = "Nguyen Dinh Trung"; // Tên người thanh toán
        String accountNumber = "123456789"; // Số tài khoản
        String bankName = "Ngan hang ABC"; // Tên ngân hàng

        // Lấy tổng số tiền từ phiên
        Double totalAmount = (Double) request.getSession().getAttribute("totalAmount");
        if (totalAmount == null) {
            totalAmount = 0.0; // Giá trị mặc định
        }

        // Tạo chuỗi thanh toán chỉ với thông tin cần thiết
        String paymentData = String.format("Ten: %s\nSo tai khoang: %s\nNgan hang: %s\nTong So Tien: %.2f",
                ownerName, accountNumber, bankName, totalAmount);

        // Tạo mã QR
        try {
            QRCodeWriter qrCodeWriter = new QRCodeWriter();
            BitMatrix bitMatrix = qrCodeWriter.encode(paymentData, BarcodeFormat.QR_CODE, 200, 200);

            BufferedImage qrImage = new BufferedImage(200, 200, BufferedImage.TYPE_INT_RGB);
            for (int x = 0; x < 200; x++) {
                for (int y = 0; y < 200; y++) {
                    qrImage.setRGB(x, y, bitMatrix.get(x, y) ? 0xFF000000 : 0xFFFFFFFF);
                }
            }

            response.setContentType("image/png");
            ImageIO.write(qrImage, "png", response.getOutputStream());
            response.getOutputStream().flush();
        } catch (WriterException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "QR Code generation failed.");
        }
    }

}
