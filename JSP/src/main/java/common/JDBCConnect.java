package common;

import jakarta.servlet.ServletContext;

import java.sql.*;
import java.util.Properties;

public class JDBCConnect {
    private Properties properties = new Properties();
    public Connection con;
    public Statement stmt;
    public ResultSet rs;
    public PreparedStatement psmt;

    // 1번째 생성자
    public JDBCConnect() {
        try {
            // JDBC 드라이버 로드
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // DB에 연결
            String url = "-";
            String id = "-";
            String pwd ="-";
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("Connected to Oracle DB (기본 생성자)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 2번째 생성자
    public  JDBCConnect(String driver, String url, String id, String pwd) {
        try {
            // JDBC 드라이버 로드
            Class.forName(driver);
            // DB에 연결
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("Connected to Oracle DB (인수 생성자 1)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 3번째 생성자
    public JDBCConnect(ServletContext application) {
        try {
            // JDBC 드라이버 로드
            String driver = application.getInitParameter("OracleDriver");
            Class.forName(driver);

            // DB에 연결
            String url = application.getInitParameter("OracleURL");
            String id = application.getInitParameter("OracleId");
            String pwd = application.getInitParameter("OraclePwd");
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("Connected to Oracle DB (인수 생성자 2)");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // 연결 해제 (자원 반납)
    public void close() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();

            System.out.println("Disconnected from Oracle DB");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

