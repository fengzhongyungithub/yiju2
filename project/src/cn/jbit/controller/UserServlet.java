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

public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String contextPath = request.getContextPath();
        String opr = request.getParameter("opr");
        UserService us = new UserServiceImpl();
        if ("login".equals(opr)) {
            String uname = request.getParameter("uname");
            String upwd = request.getParameter("upwd");
            User u = new User();
            u.setUname(uname);
            u.setUpwd(upwd);
            u = us.doLogin(u);
            if (u == null) {
                writer.print("<script type=\"text/javascript\">");
                writer.print("alert(\"用户名密码错误，请重新登录\");");
                writer.print("open(\"" + contextPath
                        + "/index.jsp\",\"_self\");");
                writer.print("</script>");
            } else {
                request.getSession().setAttribute("admin", uname);
                response.sendRedirect(contextPath + "/newsServlet?opr=list");
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        this.doPost(request, response);
    }
}
