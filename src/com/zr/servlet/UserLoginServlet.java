package com.zr.servlet;

import com.alibaba.fastjson.JSONObject;
import com.zr.entity.ResultCode;
import com.zr.entity.User;
import com.zr.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author: LiGX
 * @Date: 2019/3/19
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserService userService =new UserService();
        User user = userService.queryOne(username);
        ResultCode rc = null;
        if(user!=null){
            //用户名正确
            if(user.getPassword().equals(password)){
                //密码正确
                rc =new ResultCode("1001","登陆成功");
            }else {
                //密码错误
                rc =new ResultCode("1002","你是不是不知道密码都不知道？！！");
            }
        }else {
            rc =new ResultCode("1003","你是不是傻，连用户名都不知道？！！");
        }
        response.getWriter().print(JSONObject.toJSONString(rc));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
