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

	<title>My JSP 'register.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

	<title>注册</title>
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" href="css/register.css">

</head>

<body>
<div id="header"></div>
<!-- 头部 end -->
<div class="rg_layout">
	<div class="rg_form clearfix">
		<div class="rg_form_left">
			<p>新用户注册</p>
			<p>USER REGISTER</p>
		</div>
		<div class="rg_form_center">
			<div id="errorMsg" style="color:red;text-align: center"></div>
			<!--注册表单-->
			<form id="registerForm" method="post" action="yiju/register">
				<!--提交处理请求的标识符-->
				<input type="hidden" name="action" value="register">
				<table style="margin-top: 25px;">
					<tr>
						<td class="td_left"><label for="username">用户名</label></td>
						<td class="td_right"><input type="text" id="username"
													name="username" placeholder="请输入用户名"></td>
					</tr>
					<tr>
						<td class="td_left"><label for="password">密码</label></td>
						<td class="td_right"><input type="password" id="password"
													name="userpassowrd" placeholder="请输入密码"></td>
					</tr>
					<tr>
						<td class="td_left"><label for="telephone">手机号</label></td>
						<td class="td_right"><input type="text" id="telephone"
													name="phone" placeholder="请输入您的手机号"></td>
						<td>
							<a  id="verify"  >获取验证码</a>
							<p> <span id="time"></span></p>
						</td>
					</tr>

					<tr>
						<td class="td_left"><label for="telephone">手机验证码</label></td>
						<td class="td_right">
							<input type="text" id="verification" name="telephone" placeholder="请输入手机验证码" onblur="test(this.value)"></td>
						<td>
					</tr>

					<tr>
						<td class="td_left"></td>
						<td class="td_right check">
							<input type="submit"  value="注册">
							<span id="msg" style="color: red;">${errorMsg}</span>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div class="rg_form_right">
			<p>
				已有账号？ <a href="jsp/login.jsp">立即登录</a>
			</p>
		</div>
	</div>
</div>
<!--引入尾部-->
<div id="footer"></div>
<!--导入布局js，共享header和footer-->

</body>
<script src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/include.js"></script>

<script>

	var waitTime = 60;
	function time(ele) {
		if (waitTime == 0) {
			ele.disabled = false;
			waitTime = 60;// 恢复计时
		} else {
			ele.disabled = true;
			ele.innerHTML = waitTime + "秒后跳转页面";
			waitTime--;
			setTimeout(function () {
				time(ele)// 关键处-定时循环调用
			}, 1000)
		}

	}
	$("#verify").click(function () {
		time(this)
		$.ajax({
			url:'/sendSms',
			data:"telephone="+$("#telephone").val(),
			dataType:"json",

		})
	})
	function test(value) {
		$.ajax({
			url:'/doverification',
			data:"verification="+$("#verification").val()+"&telephone="+$("#telephone").val(),
			dataType:"json",
			success:function (data) {
				alert(data);
				if (data=="fail"){
					alert("验证码输入错误，重新核对");
				}else {

				}
			}
		})
	}

	/*
        表单校验：
            1.用户名：单词字符，长度8到20位
            2.密码：单词字符，长度8到20位
            3.email：邮件格式
            4.身份证：非空
            5.手机号：手机号格式
            6.出生日期：非空
            7.验证码：非空
     */
	/*//校验用户名
    //单词字符，长度8到20位
    function checkUsername() {
        //1.获取用户名值
        var username = $("#username").val();
        //alert(realname);
        //2.定义正则  字母
        var reg_username = /^[a-zA-Z0-9_\u4e00-\u9fa5]{8,20}$/;
        //3.判断，给出提示信息
        var flag = reg_username.test(username);
        if (flag) {
            //用户名合法
            $("#username").css("border", "");
        } else {
            //用户名非法,加一个红色边框
            $("#username").css("border", "1px solid red");
        }
        return flag;
    }
    //校验密码
    function checkPassword() {
        //1.获取密码值
        var password = $("#password").val();
        //2.定义正则
        var reg_password = /^\w{8,20}$/;

        //3.判断，给出提示信息
        var flag = reg_password.test(password);
        if (flag) {
            //密码合法
            $("#password").css("border", "");
        } else {
            //密码非法,加一个红色边框
            $("#password").css("border", "1px solid red");
        }
        return flag;
    }
    //校验邮箱
    function checkEmail() {
        //1.获取邮箱
        var email = $("#email").val();
        //2.定义正则		itcast@163.com
        var reg_email = /^\w+@\w+\.\w+$/;
        //3.判断
        var flag = reg_email.test(email);
        if (flag) {
            $("#email").css("border", "");
        } else {
            $("#email").css("border", "1px solid red");
        }
        return flag;
    }
    //校验姓名
    function checkRealname() {
        var name = $("#realname").val();
        var flag = false;
        if (name == "") {
            $("#realname").css("border", "1px solid red");

        } else {
            $("#realname").css("border", "");
            flag = true
        }
        return flag;
    }

    //校验手机号
    function checkTelephone() {
        var telephone = $("#telephone").val();
        //alert(phone);
        var flag = false;
        var reg_phone = /^1[3-9]+\d{9}$/;
        if (reg_phone.test(telephone)) {
            $("#telephone").css("border", "");
            flag = true;
        } else {
            $("#telephone").css("border", "1px solid red");
        }
        return flag;
    }

    function checkCardId() {
        var cardId = $("#cardId").val();
        var reg_cardId = /^\d{18}$/;
        var flag = false;
        if (reg_cardId.test(cardId)) {
            $("#cardId").css("border", "");
            flag = true;
        } else {
            $("#cardId").css("border", "1px solid red");
        }
        return flag;
    }

    //校验验证码
    function checkCode() {
        var check = $("#check").val();
        var flag = false;

        if (check == "") {
            $("#check").css("border", "1px solid red");
        } else {
            $("#check").css("border", "");
            flag = true;
        }
        return flag;
    }

    $(function() {
        //当表单提交时，调用所有的校验方法
        $("#registerForm").submit(
                function() {
                    //alert(1);
                    //1.发送数据到服务器
                    if (checkUsername() && checkPassword() && checkEmail()
                            && checkRealname() && checkTelephone()
                            && checkCardId() && checkCode()) {

                        //alert(123);

                        //校验通过,发送ajax请求，提交表单的数据   username=zhangsan&password=123

                        /!* $.post("RegisterServlet", $(this).serialize(), function(data) {
                            //处理服务器响应的数据  data  {flag:true,errorMsg:"注册失败"}
                            alert(data);
                            if (data.flag) {
                                //注册成功，跳转成功页面
                                //alert(data);
                                location.href = "register_ok.jsp";
                            } else {
                                //注册失败,给errorMsg添加提示信息
                                $("#errorMsg").html(data.errorMsg);
                            }
                        }); *!/

                        return true;
                    }
                    //2.不让页面跳转
                    return false;
                    //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
                });
        //当某一个组件失去焦点是，调用对应的校验方法
        $("#username").blur(checkUsername);
        $("#password").blur(checkPassword);
        $("#email").blur(checkEmail);
        $("#realname").blur(checkRealname);
        $("#telephone").blur(checkTelephone);
        $("#check").blur(checkCode);
        $("#cardId").blur(checkCardId);

    });*/
</script>
</html>
