<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'favoriterank.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <link rel="stylesheet" type="text/css" href="css/common.css">
        <link rel="stylesheet" type="text/css" href="css/ranking-list.css">
        <script src="js/jquery-3.3.1.js"></script>

  </head>
  
  <body>
    <!--引入头部-->
<%--    <div id="header"></div>--%>
    <jsp:include page="header.jsp"></jsp:include>
        <div class="contant">
            <div class="shaixuan">
                <span>XX名称</span>
                <input type="text" id="address">
                <span>金额</span>
                <input type="text" id="price1">~<input type="text" id="price2">
                <button onclick="load()">搜索</button>
            </div>
            <div class="list clearfix">
                <ul id="ul">
                    <li>
                        <span class="num one">1</span>
                        <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num two">2</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题.</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">3</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">4</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">5</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">6</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">7</span>
                         <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">8</span>
                        <a href="route_detail.html"><img src="images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">标题..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="pageNum">
                <ul id="pageNum">
                    <li><a href="">首页</a></li>
                    <li class="threeword"><a href="#">上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">10</a></li>
                    <li class="threeword"><a href="javascript:;">下一页</a></li>
                    <li class="threeword"><a href="javascript:;">末页</a></li>
                </ul>
            </div>
        </div>
    	
         <!--导入底部-->
   		 <div id="footer"></div>
    <!--导入布局js，共享header和footer-->
   <%-- <script type="text/javascript" src="js/include.js"></script>--%>
    <jsp:include page="footer.jsp"></jsp:include>
    <script type="text/javascript">
	load();
	function load(currentPage) {
		var address=$("#address").val();
        var price1=$("#price1").val();
        var price2=$("#price2").val();
		$.get("route/pageCollection",{address:address,price1:price1,price2:price2,currentPage:currentPage},function(pb){
			var lis = "";
			//首页
			var firstPage = "<li onclick='javascipt:load()'><a href='javascript:void(0)'>首页</a></li>";
			var beforeNum = pb.currentPage - 1;
			if (beforeNum <= 0) {
				beforeNum = 1;
			}
			var prevPage = "<li onclick='javascipt:load("+beforeNum+")' class='threeword'><a href='javascript:void(0)'>上一页</a></li>";
			lis += firstPage;
			lis += prevPage;
			 //1.2 展示分页页码
            /*
                1.一共展示10个页码，能够达到前5后4的效果
                2.如果前边不够5个，后边补齐10个
                3.如果后边不足4个，前边补齐10个
            */
			
				var begin;
			 	var end;
            
			if(pb.totalPage<10){
				begin=1;
				end=pb.totalPage;
			}else{
				//页码不足10页
				//前边页码
				begin=pb.currentPage-5;
				//后边的页码
				end=pb.currentPage+4;
				//前边不足5个，后边补齐10个
				if(begin<1){
					begin=1;
					end=begin+9;
				}
				//end+4之后判断，后边不足4个前边补齐10个
				if(end>pb.totalPage){
					end=pb.totalPage;
					begin=end-9;
				}
				
				
			}
			for (var i = begin; i <=end; i++) {
				var li;
				//判断当前页码是否等于i
				if (pb.currentPage == i) {
					//选择
					li = "<li class='curPage' onclick='javascript: load("+i+")'><a href='javascript:void(0)'>"+i+"</a></li>";
				} else {
					//非选择
					li = "<li onclick='javascript: load("+i+")'><a href='javascript:void(0)'>"+i+"</a></li>";
				}
				lis += li;
			}
			//下一页
			var nextNum=pb.currentPage+1;
			if(nextNum>=pb.totalPage){
				nextNum=pb.totalPage;
			}
			var nextPage = "<li onclick='javascript:load("+nextNum+")' class='threeword'><a href='javascript:void(0);'>下一页</a></li>";
			//末页
			var lastPage = "<li onclick='javascript:load("+pb.totalPage+")' class='threeword'><a href='javascript:void(0);'>末页</a></li>";
			lis += nextPage;
			lis += lastPage;
			$("#pageNum").html(lis);
			//列表数据展示
			var route_last = "";
				for (var i = 0; i < pb.list.length; i++) {
					var route = pb.list[i];
					//alert(route);
					var li="";
					if(i==0&&pb.currentPage==1){
						li="<li>"+
		                    "<span class='num one'>"+(i+1)+"</span>"+
		                    "<a href='jsp/route_detail.jsp?id="+route.id+"'><img src="+route.picture+"'image/img' alt=''></a>"+
		                    "<h4><a href='jsp/route_detail.jsp?id="+route.id+"'>"+route.rname+"</a></h4>"+
		                    "<p>"+
		                        "<b class='price'>&yen;<span>"+route.price+"</span>起</b>"+
		                        "<span class='shouchang'>已收藏"+route.collectionCount+"次</span>"+
		                    "</p>"+
		                "</li>";
					}else if(i==1&&pb.currentPage==1){
						li="<li>"+
		                    "<span class='num two'>"+(i+1)+"</span>"+
		                    "<a href='jsp/route_detail.jsp?id="+route.id+"'><img src="+route.picture+"'image/img' alt=''></a>"+
		                    "<h4><a href='jsp/route_detail.jsp?id="+route.id+"'>"+route.rname+"</a></h4>"+
		                    "<p>"+
		                        "<b class='price'>&yen;<span>"+route.price+"</span>起</b>"+
		                        "<span class='shouchang'>已收藏"+route.collectionCount+"次</span>"+
		                    "</p>"+
		                "</li>";
					}else{
						li="<li>"+
		                    "<span class='num'>"+((i+1)+((pb.currentPage-1)*6))+"</span>"+
		                    "<a href='jsp/route_detail.jsp?id="+route.id+"'><img src="+route.picture+"'image/img' alt=''></a>"+
		                    "<h4><a href='jsp/route_detail.jsp?id="+route.id+"'>"+route.rname+"</a></h4>"+
		                    "<p>"+
		                        "<b class='price'>&yen;<span>"+route.price+"</span>起</b>"+
		                        "<span class='shouchang'>已收藏"+route.collectionCount+"次</span>"+
		                    "</p>"+
		                "</li>";
					}
					route_last += li;
				}
	
				$("#ul").html(route_last);
							
				//定位到页面顶部  点击加载完毕后回到页面顶端 
               	window.scrollTo(0,0);
		});
		
	}
    </script>
  </body>
</html>
