package com.zr.servlet;

import com.zr.entity.Link;
import com.zr.entity.PageBean;
import com.zr.service.LinkService;
import com.zr.util.StringUtil;

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
 * @Date: 2019-03-20 下午 4:22
 */
@WebServlet(name = "LinkServlet",urlPatterns = "/LinkServlet",initParams = {@WebInitParam(name ="pageCount" ,value = "5")} )
public class LinkServlet extends HttpServlet {
    private LinkService service=new LinkService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("query".equals(action)){
            query(request,response);
        }else if("add".equals(action)){
            add(request,response);
        }else if("update".equals(action)){

        }else if("delete".equals(action)){

        }else if("deleteAll".equals(action)){

        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
    protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("add....");


    }
    protected void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean=new PageBean();
        //获取页码
        String pageIndex = request.getParameter("pageIndex");
        if(!StringUtil.isEmpty(pageIndex)){
            pageBean.setPageIndex(Integer.parseInt(pageIndex));
        }
        //获取每页条数
        String pageCount = getInitParameter("pageCount");
        pageBean.setPageCount(Integer.parseInt(pageCount));
        //获取总条数
        pageBean.setCount(service.getCount());
        //获取数据

        List<Link> linkList = service.queryLinkPage(pageBean);
        System.out.println(linkList);
        request.setAttribute("linkList",linkList);
        request.setAttribute("pageBean",pageBean);
        request.getRequestDispatcher("/background/link/linkList.jsp").forward(request,response);
    }
}
