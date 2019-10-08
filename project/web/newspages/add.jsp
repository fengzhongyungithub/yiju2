<%@ page import="cn.jbit.cn.jbit.entity.Topic" %>
<%@ page import="cn.jbit.javabean.Topic" %>
<%@ page import="cn.jbit.service.Impl.TopicServiceImpl" %>
<%@ page import="cn.jbit.service.TopicService" %><%--
  Created by IntelliJ IDEA.
  User: object
  Date: 2019/9/18
  Time: 18:17
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
    String tname = request.getParameter("tname");
    Topic to = new Topic();
    to.setTname(tname);
    TopicService ts = new TopicServiceImpl();
    int i = ts.addTopic(tname);
    if (i > 0) {
        request.getRequestDispatcher("topOne.jsp").forward(request, response);
    }

%>



</body>
</html>
