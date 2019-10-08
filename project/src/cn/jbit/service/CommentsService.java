package cn.jbit.service;

import cn.jbit.entity.Comment;

import java.util.List;

public interface CommentsService {
    // 通过新闻id查找评论
    public List<Comment> findCommentsByNid(int nid);
    // 添加评论
    public int addComment(Comment comment);
    // 删除评论
    public int deleteCommentById(int cid);
}
