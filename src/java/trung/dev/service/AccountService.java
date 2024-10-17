package trung.dev.service;

import trung.dev.data.model.GoogleAccount;
import trung.dev.data.model.User;

public class AccountService {

    public User convertToUser(GoogleAccount googleAccount) {
        // Khởi tạo mật khẩu và vai trò mặc định
        String role = "user"; // Vai trò mặc định
        String verificationToken = generateVerificationToken(); // Tạo mã xác minh

        // Trả về đối tượng User với thông tin từ tài khoản Google
        return new User(googleAccount.getEmail(), null, role, verificationToken, false);
    }

    private String generateVerificationToken() {
        // Tạo mã xác minh ngẫu nhiên, bạn có thể sử dụng một thư viện để tạo token
        return java.util.UUID.randomUUID().toString();
    }
}
