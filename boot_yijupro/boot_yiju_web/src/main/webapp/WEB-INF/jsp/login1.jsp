<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/22
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head lang="en">
    <title>Bootstrap 基本模板</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.1.css"/>
</head>
<body style="background: url(${pageContext.request.contextPath}/img/loginbagimg.jpg);background-repeat: no-repeat; background-size: cover;">
<div class="login-box">
    <div class="login-box-bag"></div>
    <div class="title">
        <img src="${pageContext.request.contextPath}/img/yijulogo.png" class="yijulogo"/>
    </div>
    <ul class="nav nav-pills text-center row">
        <li class="active"><a href="#name1" id="loginpills" data-toggle="pill">登录</a></li>
        <li><a href="#name2" data-toggle="pill" id="registerpills" >注册</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane fade in active" id="name1">
            <p>
            <div class="login_inner">
                <!--登录-->
                <form id="loginForm"  action="user/login" method="post" accept-charset="utf-8" onsubmit="loginsubmit()">
                    <input type="hidden" name="action" class="form-control" value="login" />
                    <div class="input-group" style="width: 230px;">
                        <span class="input-group-addon"><img src="${pageContext.request.contextPath}/img/logoPhone.png" style="width: 20px; height: 20px;"/></span>
                        <input name="phone" class="form-control" type="text" id="phone" placeholder="请输入手机号" required pattern="1[3-9]\d{9}" autocomplete="off">
                    </div>
                    <br>
                    <div class="input-group" style="width: 230px;">
                        <span class="input-group-addon"><img src="${pageContext.request.contextPath}/img/logopassword.png" style="width: 15px; height: 15px;"/></span>
                        <input name="userpassword" id="userpassword" class="form-control" type="password" placeholder="请输入密码" autocomplete="off" required pattern="^\w{6,16}$">
                    </div>

                    <div class="input-group">
                        <div class="submit_btn">
                            <div class="auto_login">
                                <input type="checkbox" name="" >
                                <span style="color: white; font-size: 13px;">自动登录</span>
                                <a href="#" id="wangpassword">忘记密码?</a>
                            </div>
                        </div>
                    </div>
                    <br/>
                    <div class="input-group">
                        <input type="submit" class="btn btn-default" style="width: 230px;" value="登录" />
                    </div>
                    <br/>
                    <div class="input-group" style="width: 230px;">
                        <a href="#mymodal" style="float: right;font-size: 13px;" data-toggle="modal">手机号快捷登录</a>
                        <span style="float:left; font-size: 15px;color: red;">${message}</span>
                    </div>
                </form>
            </div>
            </p>
        </div>
        <!-- 注册 -->
        <div class="tab-pane fade" id="name2">
            <p>
            <form id="registerForm" method="post" action="/user/register">
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="${pageContext.request.contextPath}/img/loginyonghu.png" style="width: 20px; height: 20px;"/></span>
                    <input id="registerusername" name="username" class="form-control" type="text" placeholder="用户名" autocomplete="off" onblur="verussername(this)"/>
                </div>
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="${pageContext.request.contextPath}/img/logopassword.png" style="width: 15px; height: 15px;"/></span>
                    <input id="registeruserpassword" name="userpassowrd" class="form-control" type="password" placeholder="请输入密码" autocomplete="off" required pattern="^\w{6,16}$">
                </div>
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="${pageContext.request.contextPath}/img/logoPhone.png" style="width: 20px; height: 20px;"/></span>
                    <input name="phone" id="registerPhone" class="form-control" type="text" placeholder="请输入手机号" autocomplete="off" required pattern="1[3-9]\d{9}">
                </div>
                <br />
                <div class="input-group" style="width: 230px;">
                    <input name="usercode" id="registercode"  class="form-control input-group-lg" type="text" placeholder="请输入验证码" autocomplete="off" required onblur="registertest(this.value)">
                    <span class="input-group-btn"><a class="btn btn-default" id="getcode">获取验证码</a></span>
                </div>
                <br/>
                <div class="input-group">
                    <input type="submit" class="btn btn-default" style="width: 230px;" value="注册" />
                </div>
                <br/>
                <div class="input-group">
                    <span style="font-size: 15px;color: red;">${message}</span>
                </div>
            </form>
            </p>
        </div>
    </div>
</div>

<!-- 手机快捷登录 -->
<div id="mymodal" class="modal fade" style="margin: 14%">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title text-center">请输入手机号</h4>
            </div>
            <div class="media-body">
                <form id="smslogin" action="doverification">

                    <div class="input-group" style="width: 250px;">
                        <input id="smslogins" name="telphone"  class="form-control" type="text" placeholder="请输入手机号" autocomplete="off" required pattern="1[3-9]\d{9}">
                    </div>
                    <br/>
                    <div class="input-group" style="width: 250px;">
                        <input class="form-control input-group-lg" name="verification" id="verification" type="text" placeholder="请输入验证码" autocomplete="off" required onblur="quicktest(this.value)">
                        <span class="input-group-btn"><a class="btn btn-default" id="verify" >获取验证码</a></span>
                        <p> <span id="time"></span></p>
                    </div>
                    <br/>
                    <div class="input-group">
                        <button type="submit" class="btn btn-primary" style="width: 250px;">登录</button>
                    </div>
                    <br/>
                    <div class="input-group" style="width: 250px;">
                        <span style="color: red;">${message}</span>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>

    $(function(){
        /* 登录 */
        $("#loginForm").click(function(){
            var phone = document.getElementById("phone");
            if(phone.validity.patternMismatch==true ){
                phone.setCustomValidity("请输入正确的手机号");
            }else{
                phone.setCustomValidity("");
            }

            var userpassword = document.getElementById("userpassword");
            if(userpassword.validity.patternMismatch==true ){
                userpassword.setCustomValidity("请输入正确的密码格式长度为6至16位");
            }else{
                userpassword.setCustomValidity("");
            }
        })
        /* 注册 */
        $("#registerForm").click(function(){

            var value=$("#registerusername").val();
            verussername(value);

            var registerusername = document.getElementById("registerusername");
            if(registerusername.validity.patternMismatch==true ){
                registerusername.setCustomValidity("用户名长度限制为16位");
            }else{
                registerusername.setCustomValidity("");
            }

            var registeruserpassword = document.getElementById("registeruserpassword");
            if(registeruserpassword.validity.patternMismatch==true ){
                registeruserpassword.setCustomValidity("请输入正确的密码格式长度为6至16位");
            }else{
                registeruserpassword.setCustomValidity("");
            }

            var registerphone = document.getElementById("registerphone");
            if(registerphone.validity.patternMismatch==true ){
                registerphone.setCustomValidity("请输入正确的手机号");
            }else{
                registerphone.setCustomValidity("");
            }
        })
        /* 快捷登录 */
        $("#smslogin").click(function(){
            var phone = document.getElementById("smslogins");
            if(phone.validity.patternMismatch==true ){
                phone.setCustomValidity("请输入正确的手机号");
            }else{
                phone.setCustomValidity("");
            }
        })

    })
    $("#verify").click(function () {
        time(this);
        $.ajax({
            url:'/sendSms',
            data:"telphone="+$("#smslogins").val(),
            dataType:"json",

        })
    })

    $("#getcode").click(function () {
        time(this);
        $.ajax({
            url:'/sendSms',
            data:"telphone="+$("#registerPhone").val(),
            dataType:"json",

        })
    })
    var waitTime = 60;
    function time(ele) {
        if (waitTime == 0) {
            ele.disabled = false;
            waitTime = 60;// 恢复计时
        } else {
            ele.disabled = true;
            ele.innerHTML = waitTime + "秒后重新发送";
            waitTime--;
            setTimeout(function () {
                time(ele)// 关键处-定时循环调用
            }, 1000)
        }

    }

/*    function quicktest(value) {
        $.ajax({
            url:'/doverification',
            data:"verification="+$("#verification").val()+"&telephone="+$("#smslogins").val(),
            dataType:"json",
            success:function (data) {
                if (data=="fail"){
                    alert("验证码输入错误，重新核对");
                }else {

                }
            }
        })
    }

    function registertest(value) {
        $.ajax({
            url:'/doverification',
            data:"verification="+$("#registercode").val()+"&telephone="+$("#registerPhone").val(),
            dataType:"json",
            success:function (data) {
                alert(data);
                if (data=="fail"){
                    alert("验证码输入错误，重新核对");
                }else {

                }
            }
        })
    }*/
   function verussername(value) {

       $.ajax({
           url:'/user/checkUerName',
           data:"registerusername="+$("#registerusername").val(),
           dataType:"json",
           success:function (data) {
               if (data.result=="fail"){
                   alert("这个用户名已存在");
                   return false;
               }else {
                   return true;
               }
           }
       })

   }


</script>
</body>
</html>
