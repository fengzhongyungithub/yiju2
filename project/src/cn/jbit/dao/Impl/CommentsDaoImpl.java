package cn.jbit.dao.Impl;

import cn.jbit.dao.CommentsDao;
import cn.jbit.entity.Comment;
import cn.jbit.util.JDBCUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentsDaoImpl implements CommentsDao {



    @Override
    public List<Comment> getCommentsByNid(int nid) {
         ResultSet rs = null;
        List<Comment> list = new ArrayList<>();
        Comment comment = null;
        String sql = "select * from comments where cnid=? order by cdate desc";
        rs = JDBCUtils.getAll(sql,nid);
        try {
            while (rs.next()) {
                comment = new Comment();
                comment.setCid(rs.getInt(1));
                comment.setCnid(rs.getInt(2));
                comment.setCcontent(rs.getString(3));
                comment.setCdate(rs.getTimestamp(4));
                comment.setCip(rs.getString(5));
                comment.setCauthor(rs.getString(6));
                list.add(comment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs,null,null);
        }

        return list;
    }

    @Override
    public int addComment(Comment comment) {
        String sql="insert into comments(cnid,ccontent,cdate,cip,cauthor) values(?,?,?,?,?)  ";
        Object[] obj = {comment.getCnid(), comment.getCcontent(), comment.getCdate(), comment.getCip(), comment.getCauthor()};
        int result=0;
        result = JDBCUtils.update(sql, obj);

        return result;
    }

    /**
     * 根据新闻id删除评论
     * @param nid
     * @return
     */
    @Override
    public int delCommentsByCNID(int nid) {
        String sql = "delete from comments where cnid=?";
        int result = 0;
        Object[] obj = {nid};
         result = JDBCUtils.update(sql, obj);

        return result;
    }

    /**
     * 删除评论
     * @param cid
     * @return
     */
    @Override
    public int deleteComment(int cid) {
        String sql = "delete from comments where cid=?";

        int result = 0;

        Object[] obj = {cid};
         result = JDBCUtils.update(sql, obj);

        return result;
    }
}
