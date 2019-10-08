package cn.jbit.dao.Impl;

import cn.jbit.dao.UserDao;
import cn.jbit.entity.User;
import cn.jbit.util.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    @Override
    public User findUser(User user) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        Connection con = null;
        User u = null;
        String sql = "SELECT * FROM news_users WHERE uname=? AND upwd=?";
        try {
            con = JDBCUtils.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getUname());
            ps.setString(2, user.getUpwd());
            rs = ps.executeQuery();
            while (rs.next()) {
                u = new User();
                u.setUid(rs.getInt(1));
                u.setUname(rs.getString(2));
                u.setUpwd(rs.getString(3));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.closeAll(rs, ps, con);
        }

        return u;
    }
}
