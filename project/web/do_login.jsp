<%@ page import="cn.jbit.cn.jbit.entity.User" %>
<%@ page import="cn.jbit.service.Impl.UserServiceImpl" %>
<%@ page import="cn.jbit.service.UserService" %>
<%--
  Created by IntelliJ IDEA.
  User: object
  Date: 2019/9/18
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String uname = request.getParameter("uname");
    String password = request.getParameter("upwd");
    User user = new User();
    user.setUname(uname);
    user.setUpwd(password);
    UserService us = new UserServiceImpl();
    user = us.doLogin(user);
    if (user == null) {
        out.print("<script type=\"text/javascript\">");
        out.print("alert(\"用户名或密码错误，请重新登录\");");
        out.print("open('index.jsp')");
        out.print("</script>");

    } else {
        session.setAttribute("admin",uname);
        //response.sendRedirect("../util/news_control.jsp?opr=list");
        //response.sendRedirect("news_control.jsp?opr=list");
        response.sendRedirect("newspages/admin.jsp");
    }




%>

</body>
</html>
