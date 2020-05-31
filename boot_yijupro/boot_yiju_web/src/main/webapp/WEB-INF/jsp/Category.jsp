<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head> --%>

<body>
	<!-- 头部 start -->
	<script>
		$(function() {
			$.get("user/findUser", {}, function(data) {
				//{uid:1,name:'李四'}

				var msg = "欢迎回来，" + data.name;
				$("#span_username").html(msg);

			});
			
				$("#regis_masten").hide();
			
			$("#regis").hover(function(){
				$("#regis_masten").show();
			},function(){
				$("#regis_masten").hide();
			});
			$("#regis_masten").hover(function(){
				$("#regis_masten").show();
			},function(){
				$("#regis_masten").hide();
			});
		});
	</script>

	<header id="header">
		<div class="top_banner">
			<img src="images/top_banner.jpg" alt="">
		</div>
		<div class="shortcut">
			<!-- 未登录状态  -->
			<div class="login_out">
				<a href="jsp/login.jsp">登录</a> 
				
				<%-- <a href="${pageContext.request.contextPath}/registerForward">注册</a> --%>


				  <a id="regis" style="padding-bottom: 10px">注册</a>
				  <div id="regis_masten" style="margin-left: 48px;">
       	 			<ul>
       	 				<li><a href="jsp/MasterRegister.jsp">卖家</a></li>
       	 				<li><a href="jsp/register.jsp">买家</a></li>
       	 			</ul>
       	 		</div>
				
				
				
				<!--  <a href="jsp/MasterRegister.jsp">注册</a> -->
			</div>
			<!-- 登录状态  -->
			<div class="login">

				<span id="span_username"></span> <a href="myfavorite.html"
					class="collection">我的收藏</a> <a
					href="javascript:location.href='user/exit';">退出</a>
			</div>
		</div>
		<div class="header_wrap">
			<div class="topbar">
				<div class="logo">
					<a href="/"><img src="images/logo.jpg" alt=""></a>
				</div>
				<div class="search">
					<input name="" type="text" placeholder="请输入查询信息"
						class="search_input" autocomplete="off"> <a
						href="javascript:;" class="search-button">搜索</a>
				</div>
				<div class="hottel">
					<div class="hot_pic">
						<img src="images/hot_tel.jpg" alt="">
					</div>
					<div class="hot_tel">
						<p class="hot_time">客服热线(9:00-6:00)</p>
						<p class="hot_num">400-618-9090</p>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 头部 end -->
	<!-- 首页导航 -->
	<div class="navitem">
		<ul class="nav">
			<li class="nav-active"><a href="index.jsp">首页</a></li>
			<li><a href="route_list.html">二手房</a></li>
			<li><a href="route_list.html">租房</a></li>
			<li><a href="route_list.html">海外</a></li>
			<li><a href="route_list.html">小区</a></li>
			<li><a href="route_list.html">发布房源</a></li>
			<li><a href="route_list.html">收藏排行榜</a></li>
			<li><a href="route_list.html">XX</a></li>
			<li><a href="favoriterank.html">XX</a></li>
		</ul>
	</div>




	<!--   </body>
</html> -->