
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="cn.jbit.service.TopicService" %>
<%@ page import="cn.jbit.service.Impl.TopicServiceImpl" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doDel.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    		int id=Integer.parseInt(request.getParameter("id"));
		TopicService t = new TopicServiceImpl();
		int result = t.deleteTopic(id);
    		if(result>0){
    			response.sendRedirect("topOne.jsp");
    		}
     %>
    
  </body>
</html>
