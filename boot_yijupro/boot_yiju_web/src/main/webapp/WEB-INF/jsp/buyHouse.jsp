<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'buyHouse.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet" href="css/buy.css" />

<script src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/getParameter.js"></script>
</head>

<body>

	<div class="i_bg">
		<div class="content mar_20">
			<img src="images/img2.jpg" />
		</div>

		<!--Begin 第二步：确认订单信息 Begin -->
		<div class="content mar_20">
			<div class="two_bg">
				<div class="two_t">
					<!-- <span class="fr"><a href="#">修改</a></span> -->
					商品列表
				</div>
				<table id="gouwuTable" border="0" class="car_tab"
					style="width:1110px;" cellspacing="0" cellpadding="0">
					<tr>
						<td class="car_th" width="550">房屋信息</td>
						<td class="car_th" width="140">描述信息</td>
						<!--  <td class="car_th" width="150">购买数量</td> -->
						<td class="car_th" width="130">小计</td>
					</tr>
					<tr>
						<td>
							<div class="c_s_img"  id="img">
								<img  src="images/c_1.jpg" width="73" height="73" />
							</div> 
							<div>
							<h3 id="rname">整租·向荣街 2室1厅 南</h3>
							
							
							</div>
						</td>
						<td align="center"><div class="introduce" id="houseIntroduce">房屋</div></td>
						<!--   <td align="center"> <div class="c_num">
							<input type="button" value="" onclick="jNumber(this,620.00);"class="car_btn_1" /> 
							<input type="text" value="1" name=""class="car_ipt" /> 
							<input type="button" value="" onclick="zNumber(this,620.00);" class="car_btn_2" />
				</div></td> -->
						<td align="center" style="color:#ff4e00;">
						
						
						<p id="price">￥620.00</p>
						
						</td>
					</tr>
					<!-- <tr class="car_tr">
                <td>
                    <div class="c_s_img"><img src="images/c_2.jpg" width="73" height="73" /></div>
                    Rio 锐澳 水蜜桃味白兰地鸡尾酒（预调酒） 275ml
                </td>
                <td align="center">房屋</td>
                <td align="center">
                <div class="c_num">
							<input type="button" value="" onclick="jNumber(this,620.00);"class="car_btn_1" /> 
							<input type="text" value="1" name=""class="car_ipt" /> 
							<input type="button" value="" onclick="zNumber(this,620.00);" class="car_btn_2" />
				</div>
				</td>
                <td align="center" style="color:#ff4e00;">￥620.00</td>
              </tr>
              <tr>
                <td>
                    <div class="c_s_img"><img src="images/c_3.jpg" width="73" height="73" /></div>
                    Rio 锐澳 水蜜桃味白兰地鸡尾酒（预调酒） 275ml
                </td>
                <td align="center">房屋</td>
                <td align="center"> <div class="c_num">
							<input type="button" value="" onclick="jNumber(this,620.00);"class="car_btn_1" /> 
							<input type="text" value="1" name=""class="car_ipt" /> 
							<input type="button" value="" onclick="zNumber(this,620.00);" class="car_btn_2" />
				</div></td>
                <td align="center" style="color:#ff4e00;">￥620.00</td>
              </tr> -->
					<tr>
						<td colspan="5" align="right"
							style="font-family:'Microsoft YaHei';">商品总价： <span
							id="sumPrice">￥620.00 </span>
						</td>
					</tr>
				</table>


				<div class="two_t">支付方式</div>
				<ul class="pay">
					<!--  <li class="checked">余额支付<div class="ch_img"></div></li>
                <li>银行亏款/转账<div class="ch_img"></div></li>
                <li>货到付款<div class="ch_img"></div></li> -->
					<li class="checked">支付宝
						<div class="ch_img"></div>
					</li>
				</ul>




			<!-- 	<div class="two_t">其他信息</div>
				<table border="0" class="car_tab" style="width:1110px;"
					cellspacing="0" cellpadding="0">
					<tr valign="top">
						<td align="right" style="padding-right:0;"><b
							style="font-size:14px;">订单附言：</b></td>
						<td style="padding-left:0;"><textarea class="add_txt"
								style="width:860px; height:50px;"></textarea></td>
					</tr>
				</table> -->

				<table border="0" style="width:900px; margin-top:20px;"
					cellspacing="0" cellpadding="0">
					<!--  <tr>
                <td align="right">
                	该订单完成后，
                    商品总价: <font color="#ff4e00" id="countMoney">￥1815.00</font>  
                </td>
              </tr> -->
					<tr height="70">
						<td align="right"><b style="font-size:14px;">应付款金额：<span
							id="AmountPayable"	style="font-size:22px; color:#ff4e00;">￥2899</span></b></td>
					</tr>
					<tr valign="top" height="150">
						<td colspan="6" align="right"><a href="#"></a>&nbsp; &nbsp; <a
							href="#"><img src="images/buy2.gif" /></a></td>
					</tr>
				</table>



			</div>
		</div>
		<!--End 第二步：确认订单信息 End-->
		<!--导入底部-->
		<div id="footer"></div>


		<div class="btmbg">
			<div class="btm">
				备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018
				尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
				<img src="images/b_1.gif" width="98" height="33" /><img
                    src="images/b_2.gif" width="98" height="33" /><img
                    src="images/b_3.gif" width="98" height="33" /><img
                    src="images/b_4.gif" width="98" height="33" /><img
                    src="images/b_5.gif" width="98" height="33" /><img
                    src="images/b_6.gif" width="98" height="33" />
			</div>
		</div>
		<!--End Footer End -->
	</div>
	<script type="text/javascript">
		$(function() {
			var id = getParameter("id");
			//alert(id);
			
			$.get("route/findByOne",{id:id},function(house){
				//alert(house);
				console.info(house);
				console.info("house:"+house);
				
				$("#rname").html(house.rname);
				//介绍
				$("#houseIntroduce").html(
						house.houseIntroduce);
				//价格 "￥"+
				$("#price").html("¥" + house.price);
				$("#sumPrice").html("¥" + house.price);
				$("#AmountPayable").html("¥" + house.price);
				
				//$("#img").html("image/img/"+house.picture);
				/*<img src="images/c_1.jpg" width="73" height="73" />  */
				$("#img").html("<img src="+house.picture+"'image/img' width='73' height='73' />");
				
			});
			
			
			
		});

		
	</script>


</body>
</html>
