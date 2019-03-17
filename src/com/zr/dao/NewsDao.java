package com.zr.dao;

import com.zr.entity.News;

import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019/3/11 0011
 */
public interface NewsDao {
    public List<News> findAll();
    public List<News> findImageNews();
    public News findHeadline();
    public List<News> findNewNews();
    public List<News> findHotNews();
    public List<News> findNewsByType(int typeId);
    public List<News> findClickNews();
}
