<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>My JSP 'Myself.jsp' starting page</title>
    
	
  </head>
 	   <link rel="stylesheet" href="../../../resources/static/css/my.css"/>
  <body>
   		<section class="head">
		
    <div class="top">
    	<ul>
    		<li class="logos"></li>
    		<li> <a href="#">二手房</a></li>
    		<li> <a href="#">租房</a></li>
    		<li> <a href="#">海外</a></li>
    		<li> <a href="#">小区</a></li>
    		<li> <a href="#">发布房源</a></li>
    		<li> <a href="#">下载App</a></li>
    	</ul>
    	
    	
    </div>
    
    <img class="logo" src="image/my/urse2.png" alt=""/>
    <a class="login" href="#">欢迎您</a>
</section>

<section class="ullist">
    <ul >
        <li>
           
            <a href="#">我关注的房源</a>
        </li>
        <li>
           
            <a href="#">我关注的小区</a>
        </li>
        <li>
           
            <a href="#">我关注的新房</a>
        </li>
        <li>

            <a href="#">我的看房记录</a>
        </li>
    </ul>
</section>
	
	<div class="show">
		
		
	</div>
  </body>
</html>
