<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'route_list.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" href="css/search.css">
<script src="js/jquery-3.3.1.js"></script>

<script type="text/javascript">
	$(function() {
		//可获取页面传过来的值
		var search = location.search;

	});
	//热门推荐
	$.get("route/lastHouse",{},function(pb){
        	//alert(pb);
        	var route_last = "";

			for (var i = 0; i < pb.length; i++) {
				var route = pb[i];
				//alert(route);
			
				var li="<li>"+
							"<div class='left'>"+
								"<img src='image/img/"+route.picture+"' alt=''>"+
							"</div>"+
							"<div class='right'>"+
								"<p>"+route.rname+"</p>"+
								"<p>"+
									"网付价<span>&yen;<span>"+route.price+"</span>起"+
									"</span>"+
								"</p>"+
							"</div>"+
						"</li>";
			
				route_last += li;
			}
			$("#ul").html(route_last);
        });
</script>
</head>

<body>
	<!--引入头部-->
<%--	<div id="header"></div>--%>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="page_one">
		<div class="contant">
			<div class="crumbs">
				<img src="images/search.png" alt="">
				<p>
					<span>搜索结果</span>
				</p>
			</div>


			<div class="xinxi clearfix">
				<div class="left">
					<div class="header">
						<span>商品信息</span> <span class="jg">价格</span>
					</div>
					<ul id="route">
						<c:forEach items="${houseByCondition}" var="house" >
							<li>
						<div class='img'>
							<a href="/house/route_detail?id=${house.id}"> <img style='width: 299px;' src='../image/img/${house.picture}'></a>
						</div>
						<div class="text1">
							<p>${house.rname}</p><br/>
							<p>${house.houseIntroduce}</p>
						</div>
						<div class='price'>
							<p class='price_num'>
							<span>&yen;</span> <span>${house.price}</span> <span>起</span>	</p>
							<p>
								<a href="/house/route_detail?id=${house.id}">查看详情</a>
							</p>
						</div>
						</li>
						</c:forEach>

					</ul>
					<div class="page_num_inf">
						<i></i>  第<span id="totalPage">${ByConditionPage.pageNum}</span>页 共<span id="totalPage">${ByConditionPage.pages}</span>页    共<span id="totalCount">${ByConditionPage.total}</span>条
					</div>
					<div class="pageNum">
						<ul id="pageNum">
							<table class="gridtable" style="width:100%;text-align: center;">
								<tr>
									<td width="10%" if="${ByConditionPage.hasPreviousPage}">
										<a href="house/findByCondition?condition=${condition}">首页</a>
									</td>
									<td width="10%" if="${ByConditionPage.hasPreviousPage}">
										<a href="house/findByCondition?condition=${condition}&pageIndex=${ByConditionPage.prePage}">上一页</a>
									</td>
									<td width="10%" c:each="nav : ${ByConditionPage.navigatepageNums}">
										<a href="'?pageNo='+${nav}" text="${nav}" if="${nav != ByConditionPage.pageNum}"></a>
										<span style="font-weight: bold" if="${nav == ByConditionPage.pageNum}" text="${nav}"></span>
									</td>
									<td width="10%" if="${ByConditionPage.hasNextPage}">
										<a href="house/findByCondition?condition=${condition}&pageIndex=${ByConditionPage.nextPage}">下一页</a>
									</td>
									<td width="10%" if="${ByConditionPage.hasNextPage}">
										<a href="house/findByCondition?condition${condition}=&pageIndex=${ByConditionPage.pages}">尾页</a>
									</td>
								</tr>
							</table>



						</ul>
					</div>
				</div>


				<div class="right">
					<div class="top">
						<div class="hot">HOT</div>
						<span>热门推荐</span>
					</div>
					<ul id="ul">
						<li>
							<div class="left">
								<img src="images/04-search_09.jpg" alt="">
							</div>
							<div class="right">
								<p>企鹅咬乌龟企鹅咬乌龟企鹅咬乌龟企鹅咬乌龟企鹅咬乌龟...</p>
								<p>
									网付价<span>&yen;<span>899</span>起
									</span>
								</p>
							</div>
						</li>
						<li>
							<div class="left">
								<img src="images/04-search_09.jpg" alt="">
							</div>
							<div class="right">
								<p>乌龟企鹅大战乌龟企鹅大战乌龟企鹅大战乌龟企鹅大战...</p>
								<p>
									网付价<span>&yen;<span>899</span>起
									</span>
								</p>
							</div>
						</li>
						<li>
							<div class="left">
								<img src="images/04-search_09.jpg" alt="">
							</div>
							<div class="right">
								<p>企鹅企鹅企鹅企鹅企鹅企鹅企鹅企鹅企鹅企鹅企鹅...</p>
								<p>
									网付价<span>&yen;<span>899</span>起
									</span>
								</p>
							</div>
						</li>
						<li>
							<div class="left">
								<img src="images/04-search_09.jpg" alt="">
							</div>
							<div class="right">
								<p>乌龟乌龟乌龟乌龟乌龟乌龟乌龟...</p>
								<p>
									网付价<span>&yen;<span>899</span>起
									</span>
								</p>
							</div>
						</li>
						<li>
							<div class="left">
								<img src="images/04-search_09.jpg" alt="">
							</div>
							<div class="right">
								<p>乌龟乌龟乌龟乌龟乌龟乌龟乌龟乌龟...</p>
								<p>
									网付价<span>&yen;<span>899</span>起
									</span>
								</p>
							</div>
						</li>
					</ul>
				</div>
			</div>


		</div>
	</div>

	<!--引入头部-->
	<div id="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<!--导入布局js，共享header和footer-->
	<script type="text/javascript" src="js/include.js"></script>
</body>
</html>
