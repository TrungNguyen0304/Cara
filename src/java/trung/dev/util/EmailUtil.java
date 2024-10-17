package trung.dev.util;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class EmailUtil {

    public static void sendVerificationEmail(String toEmail, String token) {
        String subject = "Xác minh Email";
        String verificationLink = "http://yourdomain.com/verify?token=" + token;

        String body = "Vui lòng nhấp vào liên kết sau để xác minh email của bạn: " + verificationLink;

        // Thiết lập các thuộc tính email và gửi email
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true"); // Bật SSL

        // Thông tin xác thực SMTP
        final String username = "TrungNguyen15989@gmail.com"; // Địa chỉ email
        final String password = "dkwdgydevdqbkyfd"; // Mật khẩu ứng dụng

        Session session = Session.getInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject(subject);
            message.setText(body);
            Transport.send(message);
            System.out.println("Email đã được gửi thành công đến " + toEmail);
        } catch (MessagingException e) {
            System.err.println("Gửi email thất bại: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
