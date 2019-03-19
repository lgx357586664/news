package com.zr.service;

import com.zr.dao.CommentDao;
import com.zr.dao.daoImpl.CommentDaoImpl;
import com.zr.entity.Comment;

import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019-03-19 下午 3:50
 */
public class CommentService {
    private CommentDao dao = new CommentDaoImpl();

    public int addComment(Comment comment) {
        return dao.addComment(comment);
    }

    public List<Comment> queryByNewsId(int newsId) {
        return dao.queryByNewsId(newsId);
    }
}
