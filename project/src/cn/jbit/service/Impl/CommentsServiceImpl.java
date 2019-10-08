package cn.jbit.service.Impl;

import cn.jbit.dao.CommentsDao;
import cn.jbit.dao.Impl.CommentsDaoImpl;
import cn.jbit.entity.Comment;
import cn.jbit.service.CommentsService;

import java.util.List;

public class CommentsServiceImpl implements CommentsService {

    private CommentsDao cd = new CommentsDaoImpl();
    @Override
    public List<Comment> findCommentsByNid(int nid) {
        return cd.getCommentsByNid(nid);
    }

    @Override
    public int addComment(Comment comment) {
        return cd.addComment(comment);
    }

    @Override
    public int deleteCommentById(int cid) {
        return cd.deleteComment(cid);
    }
}
