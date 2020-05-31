<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'myfavorite.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/css/common.css">
    <link rel="stylesheet" href="/css/index.css">
    <script src="js/jquery-3.3.1.js"></script>
    <style>
        .tab-content .row > div {
            margin-top: 16px;
        }

        .tab-content {
            margin-bottom: 36px;
        }
    </style>


</head>

<body>
<%--<div id="header"></div>--%>
<jsp:include page="header.jsp"></jsp:include>

<!-- 排行榜 start-->
<section id="content">
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="/images/icon_5.jpg" alt=""> <span>我的收藏</span>
            </div>
        </div>

        <div class="jx_content">
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="row">
                        <table class="tablelist">
                            <c:forEach items="${houses}" var="house">
                                <div class='col-md-3'>
                                    <a href='jroute_detail.html'>
                                        <img src='image/img/${house.picture}' alt=''/>


                                        <div class='has_border'>
                                            <h3>标题:${house.houseType}</h3>
                                            <div class='price'>
                                                网付价<em>￥</em><strong>${house.price}</strong><em>起</em>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="pageNum">
            <ul class="pageNum">
                <table class="gridtable" style="width:100%;text-align: center;">
                    <tr>
                        <td width="10%" if="${pageInfo.hasPreviousPage}">
                            <a href="collect/searchCollection/?id=${id}">首页</a>
                        </td>
                        <td width="10%" if="${pageInfo.hasPreviousPage}">
                            <a href="collect/searchCollection/?id=${id}&pageIndex=${pageInfo.prePage}">上一页</a>
                        </td>
                        <td width="10%" c:each="nav : ${pageInfo.navigatepageNums}">
                            <a href="'?pageNo='+${nav}" text="${nav}" if="${nav != pageInfo.pageNum}"></a>
                            <span style="font-weight: bold" if="${nav == pageInfo.pageNum}" text="${nav}"></span>
                        </td>
                        <td width="10%" if="${pageInfo.hasNextPage}">
                            <a href="collect/searchCollection/?id=${id}&pageIndex=${pageInfo.nextPage}">下一页</a>
                        </td>
                        <td width="10%" if="${pageInfo.hasNextPage}">
                            <a href="collect/searchCollection/?id=1&pageIndex=
						${pageInfo.pages}">尾页</a>
                        </td>
                    </tr>
                </table>
            </ul>
        </div>


    </section>
</section>
<!-- 排行榜 end-->

<!--引入尾部-->
<input type="hidden" value="${object.name}" id="name"/>
<div id="footer">
    <jsp:include page="footer.jsp"></jsp:include>
</div>
<!--导入布局js，共享header和footer-->
<script type="text/javascript" src="/js/include.js"></script>
</body>
</html>
