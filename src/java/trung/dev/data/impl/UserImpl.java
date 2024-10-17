package trung.dev.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import trung.dev.data.dao.UserDAO;
import trung.dev.data.driver.MySQLDriver;
import trung.dev.data.model.User;

public class UserImpl implements UserDAO {

    Connection con = MySQLDriver.getInstance().getConnection();

    @Override
    public boolean insert(User user) {
        String sql = "INSERT INTO `USER`(ID, EMAIL, PASSWORD, ROLE, verification_token, verified) VALUES(null, ?, ?, ?, ?, false)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setString(4, user.getVerificationToken()); // Gửi verification_token

            return stmt.executeUpdate() > 0; // Trả về true nếu chèn thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Trả về false nếu có lỗi
    }

    public boolean insertCreate(User user) {
        String sql = "INSERT INTO `USER`(ID, EMAIL, PASSWORD, ROLE, verification_token, verified) VALUES(null, ?, ?, ?, ?, true)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setString(4, user.getVerificationToken()); // Gửi verification_token

            return stmt.executeUpdate() > 0; // Trả về true nếu chèn thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Trả về false nếu có lỗi
    }

    @Override
    public boolean update(User user) {
        String sql = "UPDATE `USER` SET email = ?, password = ?, role = ? WHERE id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setInt(4, user.getId());
            return stmt.executeUpdate() > 0; // Trả về true nếu cập nhật thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        String sql = "DELETE FROM `USER` WHERE id = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0; // Trả về true nếu xóa thành công
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User find(int id) {
        String sql = "SELECT * FROM `USER` WHERE ID = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                String verificationToken = rs.getString("verification_token");
                boolean isVerified = rs.getBoolean("verified");

                return new User(id, email, password, role, verificationToken, isVerified);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM `USER` WHERE ID > ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, 0);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                String verificationToken = rs.getString("verification_token");
                boolean isVerified = rs.getBoolean("verified");

                users.add(new User(id, email, password, role, verificationToken, isVerified));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    @Override
    public User find(String email, String password) {
        String sql = "SELECT * FROM `USER` WHERE EMAIL = ? AND PASSWORD = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String role = rs.getString("role");
                String verificationToken = rs.getString("verification_token");
                boolean isVerified = rs.getBoolean("verified");
                return new User(id, email, password, role, verificationToken, isVerified);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public User find(String email) {
        String sql = "SELECT * FROM `USER` WHERE EMAIL = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String password = rs.getString("password");
                String role = rs.getString("role");
                String verificationToken = rs.getString("verification_token");
                boolean isVerified = rs.getBoolean("verified");
                return new User(id, email, password, role, verificationToken, isVerified);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean verifyUser(String token) {
        String sqlUpdateUser = "UPDATE `USER` SET verified = true WHERE verification_token = ? AND verified = false";
        try (PreparedStatement stmtUpdate = con.prepareStatement(sqlUpdateUser)) {
            stmtUpdate.setString(1, token);
            int affectedRows = stmtUpdate.executeUpdate();
            return affectedRows > 0; // Trả về true nếu có ít nhất một hàng bị ảnh hưởng
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // Trả về false nếu không thành công
    }

    public User findByVerificationToken(String token) {
        String sql = "SELECT * FROM `USER` WHERE verification_token = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, token);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                boolean isVerified = rs.getBoolean("verified");
                return new User(id, email, password, role, token, isVerified);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Trả về null nếu không tìm thấy người dùng
    }
}
