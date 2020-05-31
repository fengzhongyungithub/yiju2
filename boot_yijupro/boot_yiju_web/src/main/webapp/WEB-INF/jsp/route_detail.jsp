<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>My JSP 'route_detail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<!--   <link rel="stylesheet" type="text/css" href="css/route-detail.css"> -->
<link rel="stylesheet" type="text/css" href="css/rout.css">
	<!-- saved from url=(0014)about:internet -->
  <script src="js/jquery-2.0.3.min.js" defer></script>
  <script type="text/javascript" src="js/include.js"></script>
	<script type="text/javascript" src="js/getParameter.js"></script>
   <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  	 <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Hy39puRjkD52O5l2T0ne7ZpSepVNY3fN"></script>
 <script>


  function s(place) {
    // 创建地图实例
    var map = new BMap.Map("container");
    // 洪泽湖坐标
    var point = new BMap.Point(116.404, 39.915);
    map.centerAndZoom(point, 12);
     map.addControl(new BMap.ScaleControl());
	map.addControl(new BMap.OverviewMapControl());
    map.addControl(new BMap.MapTypeControl());
    //启用滚动放大
   map.enableScrollWheelZoom();
    // 创建标注
    var marker = new BMap.Marker(point);
   marker.enableDragging();
    //本地搜索 
    var local = new BMap.LocalSearch(map, {
        renderOptions: {map: map}
    });
  // alert(place);
    local.search(place);
};

</script>
</head>

<body>
	<div id="header"></div>

	<jsp:include page="header.jsp"></jsp:include>
	<!-- 详情 start -->
	<div class="wrap">
		<div class="bread_box">
			<a href="/">首页</a> <span> &gt;</span> <a href="#">标题</a><span>
				&gt;</span> <a href="#">内容</a>
		</div>
		<div class="prosum_box">
			<dl class="prosum_left">

			</dl>
			<div class="prosum_right">
				<p class="pros_title" id="rname">${Houseinfo.rname}</p>
				<p class="hot" id="houseIntroduce">${Houseinfo.houseIntroduce}</p>
				<div class="pros_other">
					<p>
						咨询电话 : <span id="masphone">0377-13333670317</span>
					</p>
					<p>
						地址 ： <span id="address">${Houseinfo.area_name}${Houseinfo.city_code}${Houseinfo.district}${Houseinfo.address}${Houseinfo.floot}楼</span>
					</p>
				</div>
				<div class="pros_price">
					<p class="price">
						<strong id="price">${Houseinfo.price}元/月</strong><span>起</span>
					</p>
					<p class="collect">
						<a class="btn" id="btn_collection" onclick="addCollection()"><i
							class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
						<a class="btn" id="pay" onclick="pay()" ><i
							class="glyphicon glyphicon-heart-empty"></i>确认支付</a>
						<span id="collectionCount">收藏数：${Houseinfo.collectionCount}</span>
					</p>
				</div>
			</div>
		</div>
		<div class="you_need_konw">
			<span>房屋介绍</span>
			<div class="notice">

				<div class="content__article__info">
					<h3 id="info">房屋信息</h3>
					<ul id="flss">
						<li class="fl oneline">基本信息</li>
						<li class="fl oneline" id="area" name="housesize">面积：${Houseinfo.housesize}/m²</li>
						<li class="fl oneline">朝向：${house_particulars.house_orientation}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline">维护：${house_particulars.house_maintain}</li>
						<li class="fl oneline">入住：${house_particulars.house_checkin}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline">楼层：${Houseinfo.floot}/${house_particulars.house_floorcount}层</li>
						<li class="fl oneline">电梯：${house_particulars.house_elevator}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline" id="floor">车位：${house_particulars.house_carstall}</li>
						<li class="fl oneline">用水：${house_particulars.house_water}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline">用电：${house_particulars.house_electricity}</li>
						<li class="fl oneline">燃气：${house_particulars.house_fuelgas}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline">采暖：${house_particulars.house_heating}</li>
						<li class="fl oneline">租期：${house_particulars.house_tenancyterm}</li>
						<li class="fl oneline">&nbsp;</li>
						<li class="fl oneline">看房：${house_particulars.house_see}</li>
					</ul>
				</div>


				<!-- 房源分割标识线，js里用到，勿删 -->
				<div class="info__line line"></div>
				</br>


				<!-- 配套设施列表 -->
				<ul class="content__article__info2">
					<li class="fl oneline">配套设施</li>

					<li class="fl oneline facility_no ">
						<c:if  test="${house_particulars.TV ==0}">
							<i style="background-image:url(images/kt4.png);"></i>
						</c:if>
						<c:if test="${house_particulars.TV ==1}">
							<i style="background-image:url(images/kt4.png);opacity: 0.4;"></i>
						</c:if>
					电视</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.refrigerator ==0}">
							<i style="background-image:url(images/kt10.png)"></i>
						</c:if>
						<c:if test="${house_particulars.refrigerator ==1}">
							<i style="background-image:url(images/kt10.png);opacity: 0.4;"></i>
						</c:if>
					冰箱</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.washing ==0}">
							<i style="background-image:url(images/kt9.png)"></i>
						</c:if>
						<c:if test="${house_particulars.washing ==1}">
							<i style="background-image:url(images/kt9.png);opacity: 0.4;"></i>
						</c:if>
					洗衣机</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.airconditioner ==0}">
							<i style="background-image:url(images/kt.png)"></i>
						</c:if>
						<c:if test="${house_particulars.airconditioner ==1}">
							<i style="background-image:url(images/kt.png);opacity: 0.4;"></i>
						</c:if>
					空调</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.waterheater ==0}">
							<i style="background-image:url(images/kt5.png)"></i>
						</c:if>
						<c:if test="${house_particulars.waterheater ==1}">
							<i style="background-image:url(images/kt5.png);opacity: 0.4;"></i>
						</c:if>
					热水器</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.bed ==0}">
							<i style="background-image:url(images/kt6.png)"></i>
						</c:if>
						<c:if test="${house_particulars.bed ==1}">
							<i style="background-image:url(images/kt6.png);opacity: 0.4;"></i>
						</c:if>
					床</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.heating ==0}">
							<i style="background-image:url(images/kt2.png)"></i>
						</c:if>
						<c:if test="${house_particulars.heating ==1}">
							<i style="background-image:url(images/kt2.png);opacity: 0.4;"></i>
						</c:if>
					暖气</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.broadband ==0}">
							<i style="background-image:url(images/kt7.png)"></i>
						</c:if>
						<c:if test="${house_particulars.broadband ==1}">
							<i style="background-image:url(images/kt7.png);opacity: 0.4;"></i>
						</c:if>
					宽带</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.closet ==0}">
							<i style="background-image:url(images/kt8.png)"></i>
						</c:if>
						<c:if test="${house_particulars.closet ==1}">
							<i style="background-image:url(images/kt8.png);opacity: 0.4;"></i>
						</c:if>
					衣柜</li>
					<li class="fl oneline  ">
						<c:if test="${house_particulars.naturalgas ==0}">
							<i style="background-image:url(images/kt10.png)"></i>
						</c:if>
						<c:if test="${house_particulars.naturalgas ==1}">
							<i style="background-image:url(images/kt10.png);opacity: 0.4;"></i>
						</c:if>
					天然气</li>
				</ul>


				<!-- 小区成交列表，最多显示3条 -->
				<div class="content__table" id="deal">
					<h3 id="h3">小区最新成交</h3>
					<div class="table">
						<div class="tr">
							<div class="th">成交日期</div>
							<div class="th">居室</div>
							<div class="th">面积</div>
							<div class="th">租赁方式</div>
							<div class="th">出租价格</div>
						</div>
						<div class="tr">
							<div class="td">2019-11-24</div>
							<div class="td">1室1厅1卫</div>
							<div class="td">43㎡</div>
							<div class="td">整租</div>
							<div class="td">900元/月</div>
						</div>
						<div class="tr">
							<div class="td">2019-11-11</div>
							<div class="td">2室1厅1卫</div>
							<div class="td">60㎡</div>
							<div class="td">整租</div>
							<div class="td">1200元/月</div>
						</div>
						<div class="tr">
							<div class="td">2019-11-06</div>
							<div class="td">1室1厅1卫</div>
							<div class="td">43㎡</div>
							<div class="td">整租</div>
							<div class="td">950元/月</div>
						</div>
					</div>
				</div>
				<h3 id="zi">地址和交通</h3>
				<div id="place">
				
			<!-- 		<div id="myPageTop" style="display: visible;">
			   <a href="javascript:void(0);" id="show">
			        点击试试———路线工具（展开/收缩）
			    </a> -->
			    <!-- <div class="pageShow">
			        <h3>搜索地址</h3>
			        <input id="local" placeholder="模糊地址搜索">
			        <span>—&nbsp;—</span>
			        <a id="city" href="javascript:void(0);">
			            点击搜索
			        </a>
			
			        <h3>搜索行车路径</h3>
			        <input id="star" placeholder="行车开始地址">
			        <span>—&nbsp;—</span>
			        <input id="end" placeholder="行车结束地址">
			        <span>—&nbsp;—</span>
			        <a id="car" href="javascript:void(0);">
			            点击搜索
			        </a>
			
			        <h3>搜索公交路径</h3>
			        <input id="bStar" placeholder="公交开始地址">
			        <span>—&nbsp;—</span>
			        <input id="bEnd" placeholder="公交结束地址">
			        <span>—&nbsp;—</span>
			        <a id="bus" href="javascript:void(0);">
			            点击搜索
			        </a>

			        <h3>搜索步行路径</h3>
			        <input id="wStar" placeholder="步行开始地址">
			        <span>—&nbsp;—</span>
			        <input id="wEnd" placeholder="步行结束地址">
			        <span>—&nbsp;—</span>
			        <a id="walk" href="javascript:void(0);">
			            点击搜索 -->
     <!--    </a> 
    </div> -->
</div>
<div id="container" style="z-index: 2; overflow: visible; position:relative;top:-300px; height: 600px;  "></div>
<div id="panel"></div>
				</div>

				<div class="bottom w1150" id="recommendList">
					<div class="bottom__list">
						<p class="bottom__list--title">联系过本房的人还在看</p>
						<div id="last" class="bottom__list--wrapper">
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>

							</div>
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>

							</div>
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>

							</div>
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>

							</div>
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>
							</div>
							<div class="bottom__list--item">
								<div class="list-picture">
									<a href="javascript:;"><img src="images/jiangxuan_17.jpg"></a>
								</div>
								<div class="list-zi">
									<h3>整租·向荣街 2室1厅 南</h3>
									<div class="prices">
										<p class="pay">2000元/月</p>
										<div class="introduce">中原-五一公园 / 89㎡ /2室1厅1卫</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 详情 end -->
	<%--这个是房屋id--%>
	<input type="hidden" value="${Houseinfo.id}" id="houseinfoid">

	<!--引入头部-->
	<div id="footer"></div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-3.3.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<!--导入布局js，共享header和footer-->
	<script type="text/javascript" src="js/include.js"></script>
	<script type="text/javascript" src="js/getParameter.js"></script>
	<script>
		$(document).ready(function() {
			//获取房屋图片
			houseimgList();
			var timer = setInterval("auto_play()", 5000);
		});
		//因为是Ajax的所以需要让Ajax完才能解决
		//1.Ajax查询出来的数据想绑定事件
		//1.直接在拼接字符串上面绑定 如onclick ='方法名'
		//2.Ajax渲染的数据加载完结时再做操作，如可以用setTimeout(); 来进行让页面一开始添加事件（不过Ajax的方法必须在前面）
		setTimeout(function () {
			$('.little_img:gt(3)').hide();
		},100)

		function houseimgList() {
			var houseid = $("#houseinfoid").val();
            var str ="";
			$.getJSON("/houseImgList?houseId="+houseid,function(data){
				str+='<dt id="dt"> <img alt="" class="big_img" src="image/imgbig/'+data[0].bigImg+'"> </dt>';
				str+='<dd id="dd"><a class="up_img up_img_disable" onclick="clickpage()"></a>';
				for (var i=0;i<data.length;i++){
					str +="<a title='1' class='little_img' onmousemove='mouveHuan(this)' data-bigpic='image/imgbig/"+data[i].bigImg+"'> <img src='image/imgbig/"+data[i].bigImg+"'/></a>";
				}
				str+='<a class="down_img down_img_disable" onclick="clickpage()" style="margin-bottom: 0;"></a></dd>';
                $(".prosum_left").html(str);
			})
		}
		//给Ajax查询出来的数据绑定悬浮事件悬浮到哪个图片上就让他显示
		function mouveHuan(smallimg) {
			/*$('.little_img:gt(3)').hide();*/
            $(smallimg).removeClass('cur_img');
            var big_pic = $(smallimg).data('bigpic');
            $('.big_img').attr('src', big_pic);
            $(smallimg).addClass('cur_img');
        }

        function clickpage() {
			//上下切换
			var picindex = 0;
			var nextindex = 4;
			$('.down_img').on('click', function() {
				var num = $('.little_img').length;
				if ((nextindex + 1) <= num) {
					$('.little_img:eq(' + picindex + ')').hide();
					$('.little_img:eq(' + nextindex + ')').show();
					picindex = picindex + 1;
					nextindex = nextindex + 1;
				}
			});
			$('.up_img').on('click', function() {
				var num = $('.little_img').length;
				if (picindex > 0) {
					$('.little_img:eq(' + (nextindex - 1) + ')').hide();
					$('.little_img:eq(' + (picindex - 1) + ')').show();
					picindex = picindex - 1;
					nextindex = nextindex - 1;
				}
			});
		}
		//自动轮播方法
		function auto_play() {
			var cur_index = $('.prosum_left dd').find('a.cur_img').index();
			cur_index = cur_index - 1;
			var num = $('.little_img').length;
			var max_index = 3;
			if ((num - 1) < 3) {
				max_index = num - 1;
			}
			if (cur_index < max_index) {
				var next_index = cur_index + 1;
				var big_pic = $('.little_img:eq(' + next_index + ')').data(
						'bigpic');
				$('.little_img').removeClass('cur_img');
				$('.little_img:eq(' + next_index + ')').addClass('cur_img');
				$('.big_img').attr('src', big_pic);
			} else {
				var big_pic = $('.little_img:eq(0)').data('bigpic');
				$('.little_img').removeClass('cur_img');
				$('.little_img:eq(0)').addClass('cur_img');
				$('.big_img').attr('src', big_pic);
			}
		}
	</script>


</body>
</html>

