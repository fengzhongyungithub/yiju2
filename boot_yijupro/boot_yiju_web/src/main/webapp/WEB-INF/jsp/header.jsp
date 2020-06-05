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



	<div id="header_bag"></div>
	<header id="header">

		<div class="header_top_banner">
			<a href=""><img src="img/yijulogo.png" alt=""/></a>
			<h1>放心租房选易居</h1>
		</div>

		<div class="header_shortcut">
			<!-- 未登录状态  -->
			<div class="header_login_out">
				<!-- <c:if test="${null !=User}"> -->
				<a href="" target="_blank">
					<div class="header_userinfo">
						<img src="img/loginbagimg.jpg" class="header_user_img" />
						<!-- <p>欢迎您:15657252554</p> -->
					</div>
				</a>
				<!-- 	</c:if> -->
				<div class="header_logininfo">
					<a href="/user/tologin" class="header_user_login" style="font-size: 18px;display: inline-block;color: white;">登录</a>
					<!-- 如果登录了就判断这个显示 -->
					<!-- <a class="loginfont" href="user/loginout" style="padding-bottom: 10px;font-size: 18px;">退出</a> -->
					<a href="/user/toregister" style="font-size: 18px;display: inline-block; color: white;">注册</a>

					<button type="button" class="btn btn-primary">发布房屋</button>
				</div>
			</div>
		</div>

		<div class="header_wrap">
			<div class="header_topbar">
				<form action="house/findByCondition">
					<input name="condition" type="text" placeholder="请输入小区/区域/几室几厅" class="search_input" id="address" autocomplete="off">
					<input type="submit" value="搜索" class="search-button" /></input>
				</form>
			</div>
		</div>




		<!-- 头部 end -->
		<!-- 首页导航 -->
		<div class="navitem">
			<ul id="category" class="nav">
				<li><a href="/house/showDifferentHouse">首页</a></li>
				<li><a href="/house/showDifferentHouse">整租</a></li>
				<li><a href="/house/showDifferentHouse">合租</a></li>
				<li><a href="/house/showDifferentHouse">首页</a></li>
				<li><a href="favoriterank.html">房屋收藏排行榜</a></li>

				<div class="header_hottel">
					<div class="hot_pic">
						<img src="img/hot_tel.png" alt="" style="width: 30px;margin-top: 5px;"/>
					</div>
					<div class="hot_tel">
						<p class="hot_time">客服热线(9:00-6:00)</p>
						<p class="hot_num">0377-13333670317</p>
					</div>
				</div>
			</ul>
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