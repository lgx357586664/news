package com.zr.servlet;

import com.zr.entity.Comment;
import com.zr.entity.News;
import com.zr.entity.NewsType;
import com.zr.entity.PageBean;
import com.zr.service.CommentService;
import com.zr.service.NewsService;
import com.zr.service.NewsTypeService;
import com.zr.util.NavUtil;
import com.zr.util.PageUtil;
import com.zr.util.StringUtil;
import com.zr.util.NewsUpAndDownUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author: LiGX
 * @Date: 2019/3/17
 */
@WebServlet(name = "newsServlet",urlPatterns = "/NewsServlet",initParams = {@WebInitParam(name="pageCount",value = "10")})
public class newsServlet extends HttpServlet {
    private NewsService service=new NewsService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("query".equals(action)){
            query(request, response);
        }else if("queryOne".equals(action)){
            queryOne(request, response);
        }
    }

    private void queryOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String newsId = request.getParameter("newsId");
        News news = service.findNewsById(Integer.parseInt(newsId));
        //导航栏
        String newsNav = NavUtil.getNavNewsById(news.getTypeId(), news.getTypeName(), news.getTitle());
        //分篇查询
        List<News> newsUpAndDown = service.getNewsUpAndDown(Integer.parseInt(newsId));
        String upAndDown = NewsUpAndDownUtil.getNewsUpAndDown(newsUpAndDown);
        CommentService commentService=new CommentService();
        //评论查询
        List<Comment> commentList = commentService.queryByNewsId(Integer.parseInt(newsId));
        request.setAttribute("commentList",commentList);
        request.setAttribute("newsNav",newsNav);
        request.setAttribute("news",news);
        request.setAttribute("newsUpAndDown",upAndDown);
        //每条新闻mainJSP用newsInfo.jsp，用的都是一个模板newsModel.jsp
        request.setAttribute("mainJsp","newsInfo.jsp");
        request.getRequestDispatcher("/foreground/newsModel.jsp").forward(request,response);
    }

    private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String typeId = request.getParameter("typeId");
        String pageIndex = request.getParameter("pageIndex");
        PageBean pageBean =new PageBean();
        //刚开始获取pageIndex为空，如果不为空，获取的是你读到的pageIndex
        if(!StringUtil.isEmpty(pageIndex)){
            //获取数据索引
            pageBean.setPageIndex(Integer.parseInt(pageIndex));
        }
        String pageCount = getInitParameter("pageCount");
        //获取每页条数
        pageBean.setPageCount(Integer.parseInt(pageCount));

        //获取总条数
        pageBean.setCount(service.findNewsCountByType(Integer.parseInt(typeId)));
        //一页的数据10条
        List<News> newsList = service.findNewsListPage(Integer.parseInt(typeId), pageBean);

        NewsTypeService typeService=new NewsTypeService();
        NewsType newsType = typeService.findTypeById(Integer.parseInt(typeId));
        // 导航条
        String newsListNav = NavUtil.getNavNewsListByType(newsType);
        //分页
        String newListPager = PageUtil.getPager(Integer.parseInt(typeId), pageBean);

        request.setAttribute("newListPager",newListPager);
        request.setAttribute("newsListNav",newsListNav);
        request.setAttribute("newsList",newsList);
        //每类新闻mainJSP用newsList.jsp，用的都是一个模板newsModel.jsp
        request.setAttribute("mainJsp","newsList.jsp");
        request.getRequestDispatcher("/foreground/newsModel.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
