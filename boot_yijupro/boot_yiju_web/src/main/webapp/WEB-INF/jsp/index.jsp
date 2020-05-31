<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

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

    <title>房源主页</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <!--  <script src="js/jquery-1.12.4.js"></script> -->
    <script src="js/jquery-3.3.1.js"></script>

    <script src="js/bootstrap.min.js"></script>



</head>

<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- banner start-->
<section id="banner">
    <div id="carousel-example-generic" class="carousel slide"
         data-ride="carousel" data-interval="2000">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0"
                class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>

            <li data-target="#carousel-example-generic" data-slide-to="5"></li>
            <li data-target="#carousel-example-generic" data-slide-to="6"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/banner_1.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_2.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_3.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_4.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_5.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_6.jpg" alt="">
            </div>
            <div class="item">
                <img src="images/banner_7.jpg" alt="">
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic"
           role="button" data-slide="prev"> <span
                class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
                class="sr-only">Previous</span>
        </a> <a class="right carousel-control" href="#carousel-example-generic"
                role="button" data-slide="next"> <span
            class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    </div>
</section>
<!-- banner end-->
<!--  start-->
<section id="content"> <!-- 精选start-->
    <section
            class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="images/icon_5.jpg" alt=""> <span>精选</span>
            </div>
            <!-- Nav tabs -->
            <ul class="jx_tabs" role="tablist">
                <li role="presentation" class="active"><span></span> <a
                        href="#popularity" aria-controls="popularity" role="tab"
                        data-toggle="tab">人气</a></li>
                <li role="presentation"><span></span> <a href="#newest"
                                                         aria-controls="newest" role="tab" data-toggle="tab">最新房源</a>
                </li>
                <li role="presentation"><span></span> <a href="#theme"
                                                         aria-controls="theme" role="tab" data-toggle="tab">主题</a></li>
            </ul>
        </div>
        <div class="jx_content">
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="popularity">
                    <div class="row">
                        <c:forEach items="${houses}" var="house">
                            <div class="col-md-3">
                                <a href="">
                                    <img src="images/${house.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${house.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${house.price}</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="newest">
                    <div class="row">
                        <c:forEach items="${collectionCountList}" var="collection">
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="images/${collection.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${collection.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${collection.price}</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>

                    </div>
                </div>

                <div role="tabpanel" class="tab-pane" id="theme">
                    <div class="row">
                        <c:forEach items="${housepushList}" var="house">
                            <div class="col-md-3">
                                <a href="javascript:;">
                                    <img src="images/${house.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${house.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${house.price}</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>

    </section>
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="images/icon_6.jpg" alt=""> <span>新房源</span>
            </div>
        </div>

        <!-- 最新 -->
        <div class="heima_gn" id="newhouse">
            <div class="guonei_l">
                <img src="images/11.jpg" alt="">
            </div>
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${houseList}" var="hou">
                        <div class="col-md-4">
                            <a href="route_detail.html">
                                <img src="images/${hou.picture}" alt="">
                                <div class="has_border">
                                    <h3>${hou.address}</h3>
                                    <div class="price">网付价<em>￥</em><strong>${hou.price}</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


    </section>
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="images/icon_7.jpg" alt=""> <span>房源主题</span>
            </div>
        </div>

        <!--类型 -->
        <div class="heima_gn" id="newtype">
            <div class="guonei_l">
                <img src="images/22.jpg" alt="">
            </div>
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${rnameList}" var="housename">
                        <div class="col-md-4">
                            <a href="route_detail.html">
                                <img src="images/${housename.picture}" alt="">
                                <div class="has_border">
                                    <h3>${housename.address}</h3>
                                    <div class="price">网付价<em>￥</em><strong>${housename.price}</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

    </section>

   <%-- <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="images/icon_7.jpg" alt=""> <span>房源主题</span>
            </div>
        </div>
        <div class="heima_gn" id="newarea">
            <div class="guonei_l">
                <img src="images/22.jpg" alt="">
            </div>
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${rnameList}" var="housename">
                        <div class="col-md-4">
                            <a href="route_detail.html">
                                <img src="images/jiangxuan_4.jpg" alt="">
                                <div class="has_border">
                                    <h3>${housename.address}</h3>
                                    <div class="price">网付价<em>￥</em><strong>${housename.price}</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

    </section>--%>
    <!--  end-->
    <!-- end-->
    <!--导入底部-->
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
