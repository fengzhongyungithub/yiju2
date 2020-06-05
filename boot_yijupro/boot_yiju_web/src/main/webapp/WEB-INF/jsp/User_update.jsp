<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/25
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../css/user_update.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="login-box">
    <ul class="nav nav-pills text-center row" style="width: 400px;">
        <li class="active"><a href="#name1" id="loginpills" data-toggle="pill">修改用户名</a></li>
        <li><a href="#name2" data-toggle="pill" id="registerpills">修改密码</a></li>
        <li><a href="#name3" data-toggle="pill" id="updatephone">修改关联手机号</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane fade in active" id="name1">
            <p>
            <div class="login_inner">
                <!--修改用户名-->
                <form id="update_username" method="post" accept-charset="utf-8"  >
                    <br />
                    <div class="input-group" style="width: 230px;">
                        <span class="input-group-addon"><img src="img/loginyonghu.png" style="width: 20px; height: 20px;" /></span>
                        <input id="updateusername" name="username" class="form-control" type="text" placeholder="用户名" autocomplete="off" onblur="verusername(this)"
                               required />
                    </div>
                    <div class="input-group" style="width: 230px;margin-left: 170px;">
                        <span style="float:left; font-size: 15px;color: red;">${error}</span>
                    </div>
                    <br />
                    <div class="input-group">
                        <input type="submit" id="update_username_button" class="btn btn-default" style="width: 230px;" onclick="allsubmit()" value="修改" />
                    </div>
                    <br />

                </form>
            </div>
            </p>
        </div>
        <!-- 修改密码 -->
        <div class="tab-pane fade" id="name2">
            <p>
            <form id="update_userpassword" method="post"  >
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="img/logopassword.png" style="width: 15px; height: 15px;" /></span>
                    <input id="userpassword" name="userpassword" class="form-control" type="password" placeholder="请旧输入密码"
                           autocomplete="off" required="required" pattern="^\w{6,16}$">
                </div>
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="img/logopassword.png" style="width: 15px; height: 15px;" /></span>
                    <input id="newuserpassword" name="newuserpassword" class="form-control" type="password" placeholder="请输入新密码"
                           autocomplete="off" required pattern="^\w{6,16}$">
                </div>
                <br />
                <div class="input-group" style="width: 230px;">
                    <span class="input-group-addon"><img src="img/logopassword.png" style="width: 15px; height: 15px;" /></span>
                    <input id="newokuserpassword" name="newokuserpassword" class="form-control" type="password" placeholder="请再次输入新密码"
                           autocomplete="off" required pattern="^\w{6,16}$">
                </div>
                <br />
                <div class="input-group">
                    <input type="submit" onclick="userpwdpd()" class="btn btn-default" id="update_userpassword_button" style="width: 230px;" value="修改密码" />
                </div>
                <br />
                <div class="input-group">
                    <span style="font-size: 15px;color: red;" id="msg">注册失败</span>
                </div>
            </form>
            </p>
        </div>
        <!-- 修改关联手机号 -->
        <div class="tab-pane fade" id="name3">
            <p>
            <form id="update_userphone">
                <br />
                <div class="input-group" style="width: 250px;">
                    <input id="oldsmsphone" name="phone" class="form-control" type="text" placeholder="请输入原手机号"  autocomplete="off" required pattern="1[3-9]\d{9}">
                </div>
                <br/>
                <div class="input-group" style="width: 250px;">
                    <input class="form-control input-group-lg" type="text" placeholder="请输入验证码" autocomplete="off" id="oldsmsyanzheng" onblur="quicktest(this.value)" required>
                    <span class="input-group-btn"><a class="btn btn-default" id="getcode">获取验证码</a></span>
                </div>

                <br />
                <div class="input-group" style="width: 250px;">
                    <input id="newsmsphone" name="newphone" class="form-control" type="text" placeholder="请输入新手机号"  autocomplete="off" required pattern="1[3-9]\d{9}">
                </div>
                <br/>
                <div class="input-group" style="width: 250px;">
                    <input class="form-control input-group-lg" type="text" placeholder="请输入验证码" autocomplete="off" id="newsmsyanzheng" onblur="quicknew()" required>
                    <span class="input-group-btn"><a class="btn btn-default" id="newsmsbutton" >获取验证码</a></span>
                </div>

                <br/>
                <div class="input-group">
                    <button type="submit" class="btn btn-primary" style="width: 250px;" onclick="allsubmit()">修改</button>
                </div>
                <br/>
                <div class="input-group" style="width: 250px;">
                    <span style="color: red;">验证码错误</span>
                </div>

            </form>
            </p>
        </div>
    </div>
</div>
<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script src="/js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script src="/js/jquery-form.js"></script>
<script src="/js/bootstrap.min.js"></script>

<script>
    /*判断用户名是否存在*/
    function verusername(value) {

        $.ajax({
            url:'/user/checkUerName',
            data:"registerusername="+$("#updateusername").val(),
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

    function quicktest(value) {
        alert("do");
        $.ajax({
            url:'/doverifi',
            data:"verification="+$("#oldsmsyanzheng").val()+"&telphone="+$("#oldsmsphone").val(),
            dataType:"json",
            success:function (data) {
                if (data.result=="fail"){
                    alert("验证码输入错误，重新核对");
                }
            }
        })
    }

    function quicknew(value) {
        alert("do");
        $.ajax({
            url:'/doverifi',
            data:"verification="+$("#newsmsyanzheng").val()+"&telphone="+$("#newsmsphone").val(),
            dataType:"json",
            success:function (data) {
                if (data.result=="fail"){
                    alert("验证码输入错误，重新核对");
                }
            }
        })
    }
    function allsubmit(){

        alert("s");
        var options = {
            type: 'POST',
            url: 'user/updateByname',
            data:{"updateusername":$("#updateusername").val(),"newokuserpassword":$("#newokuserpassword").val(),"newsmsphone":$("#newsmsphone").val(),"userpassword":$("#userpassword").val()},
            dataType: 'json',
            success: function (data) {
                if (data.result=="ok") {
                    alert("修改成功");
                }else if(data.result=="passerro"){
                    alert("原密码错误");
                }
                else {
                    alert("修改失败");
                }
            },
            error: function (xhr, status, err) {
                alert("操作失败");
            }
        }
        alert($("#updateusername").val())
        $(this).ajaxSubmit(options);
        return false;   //防止表单自动提交
    };



    $(function() {

        $("#newsmsbutton").click(function () {
            time(this);
            $.ajax({
                url:'/sendSms',
                data:"telphone="+$("#newsmsphone").val(),
                dataType:"json",

            })
        })


        $("#getcode").click(function () {
            time(this);
            $.ajax({
                url:'/sendSms',
                data:"telphone="+$("#oldsmsphone").val(),
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
        $("#update_userpassword").click(function() {
            if(userpwdpd()){
                var con;
                con =confirm("确定要修改密码么?")
                if(con==false){
                    return false;
                }
            }
        })
       /* 给原号码发送验证码*/
        $("#verify").click(function () {
            time(this);
            $.ajax({
                url:'/sendSms',
                data:"telphone="+$("#oldsmsphone").val(),
                dataType:"json",

            })
        })

        $("#update_username_button").click(function() {
            if(usernamepd()){
                var con;
                con =confirm("确定要修改用户名么?")
                if(con==false){
                    return false;
                }
            }
        })

        $("#update_userphone").click(function() {
            if(oldupdate_userphonepd()){
                //如果旧手机号通过验证那么让旧手机号都给关闭不让他显示
                $("#oldsmsphone").attr("readonly",true);
                $("#oldsmsyanzheng").attr("readonly",true);
                $("#oldsmsbutton").attr("disabled",true);
                newupdate_userphonepd()
            }
        })


        /* 验证老手机号 */
        function oldupdate_userphonepd(){

            var oldsmsphone = document.getElementById("oldsmsphone");
            if (oldsmsphone.validity.valueMissing) {
                oldsmsphone.setCustomValidity("请输入旧手机号");
                return false;
            }else if(oldsmsphone.validity.patternMismatch==true ){
                oldsmsphone.setCustomValidity("请输入正确的手机号");
                return false;
            }else{
                oldsmsphone.setCustomValidity("");
            }

            var oldsmsyanzheng = document.getElementById("oldsmsyanzheng");
            if (oldsmsyanzheng.validity.valueMissing) {
                oldsmsyanzheng.setCustomValidity("请输入验证码");
                return false;
            }else{
                oldsmsyanzheng.setCustomValidity("");
                return true;
            }

        }

        /* 新手机号判断 */
        function newupdate_userphonepd(){
            var newsmsphone = document.getElementById("newsmsphone");
            if (newsmsphone.validity.valueMissing) {
                newsmsphone.setCustomValidity("请输入新手机号");
                return false;
            }else if(newsmsphone.validity.patternMismatch==true ){
                newsmsphone.setCustomValidity("请输入正确的手机号");
                return false;
            }else{
                newsmsphone.setCustomValidity("");
            }

            var newsmsyanzheng = document.getElementById("newsmsyanzheng");
            if (newsmsyanzheng.validity.valueMissing) {
                newsmsyanzheng.setCustomValidity("请输入验证码");
                return false;
            }else{
                newsmsyanzheng.setCustomValidity("");
               allsubmit();
                return true;
            }
        }

        /* 用户名修改判断 */
        function usernamepd() {
            var updateusername = document.getElementById("updateusername");
            if (updateusername.validity.valueMissing) {
                updateusername.setCustomValidity("请输入用户名");
                return false;
            } else {
                return true;
            }
            if (updateusername.validity.patternMismatch == true) {
                updateusername.setCustomValidity("请输入正确的密码格式长度为6至16位");
                return false;
            } else {
                updateusername.setCustomValidity("");
                return true;
            }
        }

        /* 用户密码修改判断 */
        function userpwdpd(){
            var userpassword = document.getElementById("userpassword");
            if (userpassword.validity.valueMissing) {
                userpassword.setCustomValidity("请输入旧密码");
                return false;
            }else if (userpassword.validity.patternMismatch == true) {
                userpassword.setCustomValidity("请输入正确的密码格式长度为6至16位");
                return false;
            } else {
                userpassword.setCustomValidity("");
            }

            var newuserpassword = document.getElementById("newuserpassword");

            if (newuserpassword.validity.valueMissing) {
                newuserpassword.setCustomValidity("请输入新密码");
                return false;
            }else if (newuserpassword.validity.patternMismatch == true) {
                newuserpassword.setCustomValidity("请输入正确的新密码格式长度为6至16位");
                return false;
            } else {
                newuserpassword.setCustomValidity("");
            }

            var newokuserpassword = document.getElementById("newokuserpassword");
            if (newokuserpassword.validity.valueMissing) {
                newokuserpassword.setCustomValidity("请再次确认新密码");
                return false;
            }else if (newokuserpassword.validity.patternMismatch == true) {
                newokuserpassword.setCustomValidity("请输入正确的新密码格式长度为6至16位");
                return false;
            } else {
                newokuserpassword.setCustomValidity("");
            }
            if(newuserpassword.value == newokuserpassword.value){
                allsubmit();
                return true;
            }else{
                newokuserpassword.setCustomValidity("两次密码不一样");
                return false;
            }
        }

        /* $("#newokuserpassword").blur(function() {
            alert($("#newuserpassword").attr("value"))
        }) */
    })
</script>
</body>
</html>
