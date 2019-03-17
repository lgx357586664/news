package com.zr.service;

import com.zr.dao.NewsDao;
import com.zr.dao.daoImpl.NewsDaoImpl;
import com.zr.entity.News;
import com.zr.entity.NewsType;
import com.zr.util.StringUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019-03-11 下午 3:12
 */
public class NewsService {
    private NewsDao dao=new NewsDaoImpl();

    public List<News> findImageNews(){
        return dao.findImageNews();
    }
    public News findHeadline(){
        News headline = dao.findHeadline();
        String context = headline.getContext();
        String text = StringUtil.html2Text(context);
        if(text.length()>=40){
            text = text.substring(0, 40);
        }
        headline.setContext(text);
        return  headline;
    }
    public List<News> findNewNews(){
        return  dao.findNewNews();
    }
    public List<News> findHotNews(){
        return  dao.findHotNews();
    }
    public List<News> findClickNews(){
        return  dao.findClickNews();
    }
    public List<List<News>> findNewsByType(){
        List<List<News>> listsnewsLists =  new ArrayList<>();
        NewsTypeService service =new NewsTypeService();
        List<NewsType> typeList = service.findAll();
        for (NewsType newsType:typeList) {
            List<News> newsList = dao.findNewsByType(newsType.getTypeId());
            listsnewsLists.add(newsList);
        }
        return listsnewsLists;
    }
}
