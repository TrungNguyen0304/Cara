package trung.dev.data.model;

public class User {

    private int id;
    private String email;
    private String password;
    private String role;

    private String verificationToken;
    private boolean verified;

    public User(String email, String password, String role, String verificationToken, boolean verified) {
        this.email = email;
        this.password = password;
        this.role = role;
        this.verificationToken = verificationToken;
        this.verified = verified;

    }

    public User(int id, String email, String password, String role, String verificationToken, boolean verified) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.role = role;
        this.verificationToken = verificationToken;
        this.verified = verified;
    }

    public User(String email, String hashedPassword, String role) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    // Phương thức getter và setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getVerificationToken() {
        return verificationToken;
    }

    public void setVerificationToken(String verificationToken) {
        this.verificationToken = verificationToken;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }
}
