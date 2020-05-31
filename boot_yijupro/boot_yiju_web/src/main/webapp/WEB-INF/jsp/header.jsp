<%--<%@page import="cn.bdqn.entity.Master"%>--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
	<!-- 头部 start -->
	<script>
		$(function() {


			//请求首页标题模块
			$.getJSON(
					"category/findAll",
					{},
					function(data) {
						var lis = '<li class="nav-active"><a href="/house/showDifferentHouse">首页</a></li>';
						for (var i = 0; i < data.length; i++) {
							//<li><a href="/house/categoryType?categoryType=${category.id}">${category.name}</a></li>

							var li = '<li><a href="house/categoryType?id='
									+ data[i].id + '">' + data[i].name
									+ '</a></li>';
							lis += li;
						}
						lis += '<li><a href="jsp/release.jsp">我是业主</a></li>';
						lis += '<li><a href="collect/searchCollection?id=2">收藏排行榜</a></li>';

						$("#category").html(lis);

						// alert(data[0].name);
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
				<c:if test="${null == User}">
					<a id="login" href="/user/tologin" style="padding-bottom: 10px">登录</a>
					<a id="regis" href="/user/toregister" style="padding-bottom: 10px">注册</a>
				</c:if>

				<c:if test="${null !=User}">
					<a id="login" style="padding-bottom: 10px">欢迎您：${User.username}</a>
				</c:if>
				<div id="regis_masten" style="margin-left: 48px;">
					<ul>
						<%--<li><a href="jsp/MasterRegister.jsp">商家</a></li>
						<li><a href="jsp/register.jsp">用户</a></li>--%>
					</ul>
				</div>
				<div id="login_mas">
					<ul>
						<%--<li><a href="jsp/masterLogin.jsp">商家登录</a></li>
						<li><a href="jsp/login.jsp">用户登录</a></li>--%>
					</ul>
				</div>
			</div>


			<!-- 登录状态  -->
			<div class="login">

				<c:if test="${null != User}">
					<span id="span_username"></span> <a href="/collect/searchCollection?id=${User.userid}" class="collection">我的收藏</a>
				</c:if>
				<c:if test="${null != User}">
					<a href="user/loginout">退出</a>
				</c:if>


				<!-- <a href="javascript:location.href='user/exit';">退出</a> -->
			</div>
		</div>
		<div class="header_wrap">
			<div class="topbar">
				<div class="logo">
					<a href="/"><!-- <img src="images/logo.jpg" alt=""> --></a>
				</div>
				<div class="search">
					<form action="house/findByCondition">
						<input name="condition" type="text" placeholder="请输入小区/区域/几室几厅"
							   class="search_input" id="address" autocomplete="off">
						<input type="submit" id="search" value="搜索" class="search-button"/></input>
					</form>
				</div>
				<div class="hottel">
					<div class="hot_pic">
						<img src="images/hot_tel.jpg" alt="">
					</div>
					<div class="hot_tel">
						<p class="hot_time">客服热线(9:00-6:00)</p>
						<p class="hot_num">0377-13333670317</p>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 头部 end -->
	<!-- 首页导航 -->
	<div class="navitem">
		<ul id="category" class="nav">
			<%--<li class="nav-active"><a href="/house/showDifferentHouse">首页</a></li>
			<c:forEach items="${categories}" var="category">
				<li><a href="/house/categoryType?categoryType=${category.id}">${category.name}</a></li>
			</c:forEach>
			<li><a href="jsp/release.jsp">我是业主</a></li>
			<li><a href="favoriterank.html">收藏排行榜</a></li>--%>
		</ul>
	</div>
	<script type="text/javascript">
		
		$(function(){
			$("#search").click(function(){
				var area=$("#address").val();
				location.href="${pageContext.request.contextPath}/route/selectAddress?area="+area;
			});
			
		});
	</script>



	<!--   </body>
</html> -->