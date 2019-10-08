package cn.jbit.dao.Impl;

import cn.jbit.dao.NewsDao;
import cn.jbit.entity.News;
import cn.jbit.util.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDaoImpl implements NewsDao {
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;



    @Override
    public List<News> getAllnews() {
        String sql = "select nid,ntid,ntitle,nauthor,ncreateDate,nsummary,tname FROM NEWS,TOPIC where news.ntid=topic.tid order by ncreateDate desc";
        rs = JDBCUtils.getAll(sql);
        List<News> list = new ArrayList<News>();
        News news = null;
        try {
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                news.setNauthor(rs.getString("nauthor"));
                news.setNcreatedate(rs.getTimestamp("ncreateDate"));
                news.setNsummary(rs.getString("nsummary"));
                news.setNtname(rs.getString("tname"));
                list.add(news);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    // 获取某主题下的所有新闻
    @Override
    public List<News> getAllnewsByTID(int Tid) {
        String sql = "select nid,ntid,ntitle,nauthor,ncreateDate,nsummary,tname from news,topic where news.ntid=topic.tid and news.ntid=? order by ncreateDate desc";
        rs = JDBCUtils.getAll(sql, Tid);
         List<News> list = new ArrayList<News>();
        News news = null;
        try {
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                news.setNauthor(rs.getString("nauthor"));
                news.setNcreatedate(rs.getTimestamp("ncreateDate"));
                news.setNsummary(rs.getString("nsummary"));
                news.setNtname(rs.getString("tname"));
                list.add(news);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    @Override
    public List<News> getAllnewsByTname(String tname) {
         List<News> list = new ArrayList<News>();
        String sql = "SELECT `nid`, `ntid`, `ntitle`, `nauthor`,"
                + " `ncreateDate`, `nsummary`, `tname` FROM `NEWS`, `TOPIC`"
                + " WHERE `NEWS`.`ntid` = `TOPIC`.`tid` AND `TOPIC`.`tname` = ?"
                + " ORDER BY `ncreateDate` DESC";
        News news = null;
        rs = JDBCUtils.getAll(sql, tname);

        try {
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                news.setNauthor(rs.getString("nauthor"));
                news.setNcreatedate(rs.getTimestamp("ncreateDate"));
                news.setNsummary(rs.getString("nsummary"));
                news.setNtname(rs.getString("tname"));
                list.add(news);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    @Override
    public int getNewsCountByTID(int Tid) {
        String sql = "SELECT COUNT(`ntid`) FROM `news` WHERE `ntid` = ?";
        int count = -1;
        try {
            rs = JDBCUtils.getAll(sql, Tid);
            rs.next();
            count = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return count;
    }

    @Override
    public List<News> getLatestNewsByTID(int tid, int limit) {
         List<News> list = new ArrayList<News>();
        News news = null;
        String sql = "SELECT `nid`, `ntid`, `ntitle` FROM `NEWS` WHERE"
                + " `ntid` = ? ORDER BY `ncreatedate` DESC LIMIT ?";
        rs = JDBCUtils.getAll(sql, tid, limit);
        try {
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                list.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    public News getNewsByNID(int nid) {
        String sql = "SELECT * FROM `NEWS`, `TOPIC`"
                + " WHERE `NEWS`.`ntid` = `TOPIC`.`tid` AND `NEWS`.`nid` = ?"
                + " ORDER BY `ncreateDate` DESC";
        News news = null;
        try {
            rs = JDBCUtils.getAll(sql, nid);
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                news.setNauthor(rs.getString("nauthor"));
                news.setNcreatedate(rs.getTimestamp("ncreateDate"));
                news.setNpicpath(rs.getString("npicPath"));
                news.setNcontent(rs.getString("ncontent"));
                news.setNmodifydate(rs.getTimestamp("nmodifyDate"));
                news.setNsummary(rs.getString("nsummary"));
                news.setNtname(rs.getString("tname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }
        return news;
    }

    @Override
    public int deleteNews(int nid) {
        String sql = "DELETE FROM `NEWS` WHERE `NID` = ?";
        int result = 0;
        result = JDBCUtils.update(sql, nid);

        return result;
    }

    @Override
    public int getTotalCount() {
        String sql = "SELECT COUNT(`nid`) FROM `news`";
        int count = -1;
        rs = JDBCUtils.getAll(sql);
        try {
            rs.next();
            count = rs.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return count;
    }

    @Override
    public List<News> getPageNewsList(int pageNo, int pageSize) {
         List<News> list = new ArrayList<News>();
        News news = null;
        String sql = "SELECT `nid`, `ntid`, `ntitle`, `nauthor`,"
                + " `ncreateDate`, `nsummary`, `tname` FROM `NEWS`, `TOPIC`"
                + " WHERE `NEWS`.`ntid` = `TOPIC`.`tid`"
                + " ORDER BY `ncreateDate` DESC LIMIT ?, ?";

        rs = JDBCUtils.getAll(sql, (pageNo - 1) * pageSize, pageSize);
        try {
            while (rs.next()) {
                news = new News();
                news.setNid(rs.getInt("nid"));
                news.setNtid(rs.getInt("ntid"));
                news.setNtitle(rs.getString("ntitle"));
                news.setNauthor(rs.getString("nauthor"));
                news.setNcreatedate(rs.getDate("ncreateDate"));
                news.setNsummary(rs.getString("nsummary"));
                news.setNtname(rs.getString("tname"));
                list.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    @Override
    public int addNews(News news) {
        String sql = "insert into news(NTID,NTITLE,NAUTHOR,NCONTENT,NSUMMARY,"
                + "NCREATEDATE,NMODIFYDATE,NPICPATH) values(?,?,?,?,?,?,?,?)";
        int result = 0;
        Object[] obj = {news.getNtid(), news.getNtitle(), news.getNauthor(), news.getNcontent(), news.getNsummary(), news.getNcreatedate(), news.getNmodifydate(), news.getNpicpath()};
        try {
            result = JDBCUtils.update(sql, obj);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int updateNews(News news) {
        String sql = "UPDATE news SET NTID=?,NTITLE=?,NAUTHOR=?,NCONTENT=?,NSUMMARY=?,"
                + "NMODIFYDATE=?,NPICPATH=? where NID=?";
        int result = 0;
        Object[] obj = {news.getNtid(), news.getNtitle(), news.getNauthor(), news.getNsummary(), news.getNmodifydate(), news.getNpicpath()};

        result = JDBCUtils.update(sql, obj);

        return result;
    }
}
