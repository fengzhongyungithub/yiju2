<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'release.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/release.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script src="js/jquery-3.3.1.js"></script>
  </head>
  
  <body>
  <!--引入头部-->
    <div id="header">
    </div>
    <div class="g-main">
	  <div class="m-jumbotron">
		<div class="tit">发布出租房源</div>
		<div class="sub-tit">数万线下门店 · 快速全城推广 · 专业经纪人服务</div>
	  </div>
		<%--<form id="addHouse"  action="house/addHouse" method="post" accept-charset="utf-8">
			<input name="price" type="text" placeholder="价格" autocomplete="off">
			<input name="house_area_code" type="text" placeholder="省份" autocomplete="off">
			<input name="address" type="text" placeholder="地址" autocomplete="off">
			<input name="floot" type="text" placeholder="楼层" autocomplete="off">
			<input name="housefczimg" type="text" placeholder="房产证照片" autocomplete="off">
			<span>${errorMsg}</span>
			<div class="submit_btn">
				&lt;%&ndash;					<button type="button" >登录</button>&ndash;%&gt;
				<input type="submit" value="发布" id="btn_sub">

			</div>
		</form>--%>
	  <div class="m-form">
		<div class="form-box">
		  <div class="box-l m-entry">
			  <dl class="compact">
				  <dt>小区所在城市</dt>
				  <dd>
				  	<input name="address" value="" type="text" placeholder="请输入所在城市" autocomplete="off" style="width: 250px;vertical-align: middle;">
				  </dd>
				  <!-- <dd class="city-select CLICKDATA" data-click-evtid="17835" data-click-event="WebClick">
					<div class="city-name">北京</div>
					<div class="link-btn">切换城市</div>
				  </dd> -->
			  </dl>
			  <dl>
				  <dt>小区</dt>
				  <dd class="wrap-sug">
					  <div class="u-sug" id="u-sug">
						  <input class="sugInput" name="area" type="text" autocomplete="off" placeholder="请输入小区名">
						  <ul style="display: none;"></ul>
					  </div>
				  </dd>
			  </dl>
			  <dl>
				  <dt>房屋地址</dt>
				  <dd>
					  <div class="u-select u-select-build">
						  <input placeholder="楼栋号" name="building" maxlength="10" data-id="" class="u-select-selected" type="text" value="">
						  <ul class="u-select-options hide" style="display: none;"></ul>
					  </div>
					  <div class="u-select u-select-build">
						  <input placeholder="单元号" name="unit" maxlength="10" data-id="" class="u-select-selected" type="text" value="">
						  <ul class="u-select-options hide" style="display: none;"></ul>
					  </div>
					  <div class="u-select u-select-build">
						  <input placeholder="门牌号" name="floot" maxlength="10" data-id="" class="u-select-selected" type="text" value="">
						  <ul class="u-select-options hide" style="display: none;"></ul>
					  </div>
				  </dd>
			  </dl>
			  <dl>
				  <dt>期望租金</dt>
				  <dd>
					<input name="price" value="" type="text" placeholder="请输入您期望租出的价格" autocomplete="off" style="width: 210px;">
					<div class="unit">元/月</div>
				  </dd>
			  </dl>
			  <dl>
				  <dt>出租方式</dt>
				  <dd>
					  <div class="u-select u-select-build">
						  <input placeholder="出租方式" name="rent_mode" readonly="readonly" data-id="1" class="u-select-selected" type="text" value="整租">
						  <ul class="u-select-options hide" id="u-select-options" style="display: none;">
							<li data-id="1" data-name="整租" id="zhengzu" class="u-select-option active">整租</li>
							<li data-id="2" data-name="合租" id="hezu" class="u-select-option">合租</li>
							<li data-id="3" data-name="转租" id="zhuanzu" class="u-select-option">转租</li>
						  </ul>
					  </div>
				  </dd>
			  </dl>
			  <dl>
				<dt>房屋大小</dt>
				<dd>
				  <input name="housesize" value="" type="text" placeholder="请输入房屋的面积" autocomplete="off" style="width: 250px;">
				</dd>
			  </dl>
			  <dl>
				  <dt>手机号码</dt>
				  <dd>
					  <input name="phone" value="" type="text" placeholder="您的联系方式，方便我们及时与您联系" autocomplete="off" style="width: 250px;">
				  </dd>
			  </dl>
			  <dl>
				  <dt>房屋图片</dt>
				  <dd>
				  	<form id="form" enctype="multipart/form-data" method="post">
				  	  <input id="picture" value="" type="text" style="width: 100px;">
					  <input name="picture" value="" type="file" style="width: 250px;">
				  	</form>
				  </dd>
			  </dl>
			  <dl>
				  <dt>图形验证码</dt>
				  <dd>
					  <input name="verify_code" value="" type="text" placeholder="请输入图形验证码中的结果" autocomplete="off" style="width: 170px;">
					  <div class="btn-getcode-sms">
						<img src="/aj/get/imgCode" alt="验证码">
					  </div>
				  </dd>
			  </dl>
		  </div>
		</div>
		<div class="m-submit">
		  <div class="wrap">
			<div class="btn-submit">
			  提交委托
			</div>
		  </div>
		</div>
		<div class="m-success">
		  <div class="marsk"></div>
		  <div class="box">
			<div class="box-l">
			  <div class="icon-weituo-success"></div>
			  <div class="tit">提交委托成功！</div>
			  <div class="sub-tit">周一至周日9:00-20:00，10106188客服会及时给您回电，请耐心等待</div>
			  <div class="btn-confirm">确定</div>
			</div>
			<div class="box-r">
			  <div class="icon-qrcode">
						  <img src="https://ajax.api.ke.com/qr/getDownloadQr?location=yezhu_success&amp;ljweb_channel_key=yezhu_maifang">
						</div>
			  <div class="txt">扫一扫·下载贝壳找房APP</div>
			</div>
			<div class="icon-close"></div>
		  </div>
		</div>
	  </div>
	</div>
	<!--引入尾部-->
    	<div id="footer"></div>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="js/include.js"></script>
  </body>
  <script type="text/javascript">
  	$(function(){
  		$(".btn-submit").click(function(){
  			var address=$("[name='address']").val();
  			var area=$("[name='area']").val();
  			var building=$("[name='building']").val();
  			var unit=$("[name='unit']").val();
  			var floot=$("[name='floot']").val();
  			var price=$("[name='price']").val();
  			var renttype=$("[name='renttype']").val();
  			var housesize=$("[name='housesize']").val();
  			var phone=$("[name='phone']").val();
  			var verify_code=$("[name='verify_code']").val();
  			location.href="house/addHouse?address="+address+"&area="+area+"&building="
  							+building+"&unit="+unit+"&floot="+floot+"&price="
  							+price+"&renttype="+renttype+"&housesize="+housesize
  							+"&phone="+phone+"&verify_code="+verify_code;
  			
  		});
  		$("[name='rent_mode']").click(function(){
  			$("#u-select-options").show();
  		});
  		$("#zhengzu").click(function(){
	  		$("[name='rent_mode']").val("整租");
	  		$("#u-select-options").hide();
  		});
  		$("#hezu").click(function(){
  			$("[name='rent_mode']").val("合租");
  			$("#u-select-options").hide();
  		});
  		$("#zhuanzu").click(function(){
  			$("[name='rent_mode']").val("转租");
  			$("#u-select-options").hide();
  		});
  	});
  </script>
</html>
