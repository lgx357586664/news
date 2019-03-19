package com.zr.dao;

import com.zr.entity.Comment;

import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019-03-19 下午 1:46
 */
public interface CommentDao {
    public int addComment(Comment comment);
    public List<Comment> queryByNewsId(int newsId);
}
