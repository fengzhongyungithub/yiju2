package cn.jbit.controller;

import cn.jbit.entity.User;
import cn.jbit.service.Impl.UserServiceImpl;
import cn.jbit.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UserLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        String contextPath = request.getContextPath();
        String opr = request.getParameter("opr");

        String uname = request.getParameter("uname");
        String password = request.getParameter("upwd");
        User user = new User();
        user.setUname(uname);
        user.setUpwd(password);
        UserService us = new UserServiceImpl();
        user = us.doLogin(user);
        if (user == null) {
            out.print("<script type=\"text/javascript\">");
            out.print("alert(\"用户名密码错误，请重新登录\");");
            out.print("open(\"" + contextPath
                    + "/index.jsp\",\"_self\");");
            out.print("</script>");
        } else {
            request.getSession().setAttribute("admin",uname);
            //response.sendRedirect("../util/news_control.jsp?opr=list");
            //response.sendRedirect("news_control.jsp?opr=list");
            response.sendRedirect(contextPath+"/newsServlet?opr=list");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
