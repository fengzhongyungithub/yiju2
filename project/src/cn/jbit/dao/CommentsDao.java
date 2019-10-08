package cn.jbit.dao;

import cn.jbit.entity.Comment;

import java.util.List;

public interface CommentsDao {
    //通过nid查找评论
    public List<Comment> getCommentsByNid(int nid);
    //添加评论
    public int addComment(Comment comment);
    //删除某新闻下的所有评论
    public int delCommentsByCNID(int nid);
    //根据ID删除评论
    public int deleteComment(int cid);


}
