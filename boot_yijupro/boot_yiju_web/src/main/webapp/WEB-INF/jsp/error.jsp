<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" href="css/register.css">
<script src="js/jquery-1.12.4.js"></script>
  </head>
  
  <body>
  <!--引入头部-->
	<div id="header"></div>
	<!-- 头部 end -->
	<div
		style="text-align:center;red:yellow;font-weight:bold;height:150px;padding-top:100px;font-size:30px;">
		<h4>激活失败，请联系<a href='index.jsp'>管理员</a></h4>
	</div>
	<!--引入尾部-->
	<div id="footer"></div>
	<!--导入布局js，共享header和footer-->
	<script type="text/javascript" src="js/include.js"></script>
  </body>
</html>
