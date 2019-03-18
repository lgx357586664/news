package com.zr.dao;

import com.zr.entity.News;
import com.zr.entity.PageBean;

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
    public List<News> findNewsListByType(int typeId, PageBean pageBean);
    public int findNewsCountByType(int typeId);
    public News findNewsById(int newsId);
    public News findUpNewsById(int newsId);
    public News findDownNewsById(int newsId);
    public void addClick(int newsId);
}
