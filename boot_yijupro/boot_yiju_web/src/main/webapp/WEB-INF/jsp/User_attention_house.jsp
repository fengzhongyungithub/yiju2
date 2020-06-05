<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/24
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <title>我的房屋关注</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="../css/User_attetion_house.css" />
<div id="attention">
    <!--------------- 导航栏-------- -->
    <nav class="navbar navbar-default">

        <ul class="nav navbar-nav">
            <li class="active text-center" id="zhengzu" style="width: 100px;"><a href="collect/searchCollectionByType?renttype=1">整租</a></li>
            <li class="text-center" id="hezu" style="width: 100px;"><a href="collect/searchCollectionByType?renttype=2">合租</a></li>
        </ul>
    </nav>
    <!--------------- 房屋-------- -->
    <div id="housecontext">
        <c:forEach items="${houses}" var="house">
            <div class='houseinfo'>

                <a href="#"><img class="houseinfo_img" src="image/img/${house.picture}" /></a>
                <!-- 内容 -->
                <a href="#">
                    <h4 class="title">标题:${house.houseType}</h4>
                </a>
                <h5 class="house_size">位置：${house.address} | 房屋大小:${house.housesize}平米</h5>
                <h5 class="house_see">随时看房</h5>
                <span class="houseinfo_money">${house.price}元</span>
                </a>
            </div>
        </c:forEach>

        <div id="page">

            <table class="gridtable" style="width:100%;text-align: center;">
                <tr>
                    <td width="10%" if="${pageInfo.hasPreviousPage}">
                        <a href="../collect/searchCollectionByType?renttype=${renttype}">首页</a>
                    </td>
                    <td width="10%" if="${pageInfo.hasPreviousPage}">
                        <a href="../collect/searchCollectionByType?pageIndex=${pageInfo.prePage}&renttype=${renttype}">上一页</a>
                    </td>
                    <td width="10%" c:each="nav : ${pageInfo.navigatepageNums}">
                        <a href="'?pageNo='+${nav}" text="${nav}" if="${nav != pageInfo.pageNum}"></a>
                        <span style="font-weight: bold" if="${nav == pageInfo.pageNum}" text="${nav}"></span>
                    </td>
                    <td width="10%" if="${pageInfo.hasNextPage}">
                        <a href="../collect/searchCollectionByType?pageIndex=${pageInfo.nextPage}&renttype=${renttype}">下一页</a>
                    </td>
                    <td width="10%" if="${pageInfo.hasNextPage}">
                        <a href="../collect/searchCollectionByType?pageIndex=
						${pageInfo.pages}&renttype=${renttype}">尾页</a>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</div>

<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script src="../js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script src="../js/bootstrap.min.js"></script>
<script>
    $("#zhengzu").click(function(){
        $("#zhengzu").addClass("active")
        $("#hezu").removeClass("active")
    })
    $("#hezu").click(function(){
        $("#hezu").addClass("active")
        $("#zhengzu").removeClass("active")
    })
</script>
</body>
</html>
