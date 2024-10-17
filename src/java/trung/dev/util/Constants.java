package trung.dev.util;

public class Constants {

    public static final String DB_URL = "jdbc:mysql://localhost:3306/shop";
    public static final String USER = "root";
    public static final String PASS = "";

    public static final int RELATED_NUMBER = 8;
    public static final int NUMBER_LIMIT = 13;

    public static final int NUMBER_NEW = 4;
    public static final int PER_PAGE = 8;

    ////
    public static final String GOOGLE_CLIENT_ID = System.getenv("AUTH_CLIENT_ID");
    public static final String GOOGLE_CLIENT_SECRET = System.getenv("AUTH_CLIENT_SECRET");
    public static final String GOOGLE_REDIRECT_URI = "http://localhost:8080/Cara/LoginServlet";
    public static final String GOOGLE_GRANT_TYPE = "authorization_code";
    public static final String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static final String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
}
