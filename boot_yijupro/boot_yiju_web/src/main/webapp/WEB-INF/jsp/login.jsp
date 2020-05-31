<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
	<script src="js/jquery-3.3.1.js"></script>
<title>登录</title>
</head>

<body>
	<!--引入头部-->
	<%--<div id="header"></div>--%>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 头部 end -->
	<section id="login_wrap">
	<div class="fullscreen-bg"
		style="background: url(images/loginimg/login_bagimg.jpg);height: 100%; width: 100%"></div>

	<div class="login-box">
		<div class="title">
			<img src="images/login_logo.png" alt=""> <span>欢迎登录XdsaXX账户</span>
		</div>
		<div class="login_inner">
			<!--登录错误提示消息-->

			<form id="loginForm"  action="user/login" method="post" accept-charset="utf-8">
				<input type="hidden" name="action" value="login" /> <input
					name="username" type="text" placeholder="请输入账号" autocomplete="off">
				<input name="userpassword" type="password" placeholder="请输入密码"
					autocomplete="off">
				<span>${errorMsg}</span>
				<div class="submit_btn">
					<%--					<button type="button" >登录</button>--%>
					<input type="submit" value="登录" id="btn_sub">
					<div class="auto_login">
						<input type="checkbox" name="" class="checkbox"> <span>自动登录</span>
					</div>
				</div>
			</form>
			<div class="reg">
				没有账户？<a href="jsp/register.jsp">立即注册</a>
			</div>
		</div>
	</div>


	</section>
	<!--引入尾部-->
	<%--<div id="footer"></div>--%>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="/js/jquery-1.11.0.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/js/bootstrap.min.js"></script>
	<!--导入布局js，共享header和footer-->
	<script src="/js/jquery-1.12.4.js"></script>
	<script type="text/javascript" src="js/include.js"></script>
</body>

<script>
	$(function() {
		//1.给登录按钮绑定单击事件
		/*$("#btn_sub").click(function() {
			//2.发送ajax请求，提交表单数据
			$.post("user/login", $("#loginForm").serialize(), function(data) {
				//data : {flag:false,errorMsg:''}
				//alert(data);
			//alert(data.flag);
				if (data.flag) {
					//登录成功

					location.href = "index.jsp";
				} else {
					//登录失败
					$("#errorMsg").html(data.errorMsg);
				}
			});
		});*/
	});
	//3.处理响应结果
</script>
</html>
