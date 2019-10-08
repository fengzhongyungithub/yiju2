package cn.jbit.util;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;

/**
 * return author  风中云
 */
public class JDBCUtils {

    private static String url;
    private static String username;
    private static String password;
    private static String driver;
    private static Connection con;

    static {
        Properties pro = new Properties();
        try {
            pro.load(JDBCUtils.class.getClassLoader().getResourceAsStream("jdbc.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }

        url = pro.getProperty("url");
        username = pro.getProperty("user");
        password = pro.getProperty("password");
        driver = pro.getProperty("driver");

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


    }


    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }


    public static void closeAll(ResultSet rs, Statement st, Connection con) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

    }


    public static int update(String sql, Object... params) {

        PreparedStatement ps = null;
        int res = 0;
        try {
            con=getConnection();
            ps = con.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i+1, params[i]);
            }

            res = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(null, ps, null);
        }

        return res;
    }


    public static ResultSet getAll(String sql, Object... params) {
        PreparedStatement ps = null;

        ResultSet rs = null;
        try {
            con = getConnection();
            ps = con.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i + 1, params[i]);
            }

            rs = ps.executeQuery();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;

    }

}
