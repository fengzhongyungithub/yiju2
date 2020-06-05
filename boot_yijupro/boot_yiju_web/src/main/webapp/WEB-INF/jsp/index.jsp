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
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css"/>

    <!--  <script src="js/jquery-1.12.4.js"></script> -->
    <script src="js/jquery-3.3.1.js"></script>

    <script src="js/bootstrap.min.js"></script>


</head>

<body>
<!--引入头部-->
<jsp:include page="header.jsp"></jsp:include>
<!-- banner start-->
<section id="banner">
    <div id="imgs">
        <div id="img_content" class="swiper-container swiper-container-horizontal">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><a href="javascript:void(0)"><img
                        src="img/F31ED86A3E58FB44F7DB94B000DA57D0.jpg"></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img
                        src="img/F31ED86A3E58FB44F7DB94B000DA57D0.jpg"></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img
                        src="img/F31ED86A3E58FB44F7DB94B000DA57D0.jpg"></a></div>
                <div class="swiper-slide"><a href="javascript:void(0)"><img
                        src="img/F31ED86A3E58FB44F7DB94B000DA57D0.jpg"></a></div>
            </div>
            <div class="swiper-pagination"></div>
            <!--分页器。如果放置在swiper-container外面，需要自定义样式。-->
            <div class="swiper-button-next" style="margin-right: 130px;"></div>
            <div class="swiper-button-prev" style="margin-left: 130px;"></div>
        </div>
    </div>
</section>
<!-- banner end-->
<!--  start-->
<section id="content">
    <!-- 精选start-->
    <section class="hemai_jx">

        <div class="jx_top">
            <div class="jx_tit">
                <img src="img/icon_5.jpg" alt="">
                <span class="span_bag"><span class="spancontext">精品推荐</span></span>
            </div>
            <!-- Nav tabs -->
            <ul class="jx_tabs" role="tablist">
                <li role="presentation" class="active"><span></span> <a href="#popularity" aria-controls="popularity"
                                                                        role="tab"
                                                                        data-toggle="tab">人气</a></li>
                <li role="presentation"><span></span> <a href="#newest" aria-controls="newest" role="tab"
                                                         data-toggle="tab">最新房源</a>
                </li>
                <li role="presentation"><span></span> <a href="#theme" aria-controls="theme" role="tab"
                                                         data-toggle="tab">主题</a></li>
            </ul>
        </div>
        <!-- ------------------------广告推完--------------------------- -->
        <div class="jx_content">
            <!-- Tab panes -->
            <div class="tab-content">
                <!-- --------------广告推送人气房源完----------------- -->
                <div role="tabpanel" class="tab-pane active">
                    <div class="row">
                        <c:forEach items="${houses}" var="house">
                            <div class="col-md-3 clo-sm-4 col-xs-3">
                                <div class="house_renqi">
                                    <a href="" target="_blank">
                                        <img class="house_renqi_img" src="images/${house.picture}" alt="">
                                        <div class="has_border">
                                            <h3>${house.address}</h3>
                                            <div class="price">网付价<em>￥</em><strong>${house.price}</strong><em>起</em>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                        <%-- <div class="col-md-3 clo-sm-4 col-xs-3">
                             <div class="house_renqi">
                                 <a href="" target="_blank">
                                     <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                     <div class="has_border">
                                         <h3>中原区 - 幸福小区</h3>
                                         <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                     </div>
                                 </a>
                             </div>
                         </div>
                         <div class="col-md-3  clo-sm-4 col-xs-3">
                             <div class="house_renqi">
                                 <a href="" target="_blank">
                                     <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                     <div class="has_border">
                                         <h3>中原区 - 幸福小区</h3>
                                         <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                     </div>
                                 </a>
                             </div>
                         </div>

                         <div class="col-md-3  clo-sm-4 col-xs-3">
                             <div class="house_renqi">
                                 <a href="" target="_blank">
                                     <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                     <div class="has_border">
                                         <h3>中原区 - 幸福小区</h3>
                                         <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                     </div>
                                 </a>
                             </div>
                         </div>

                         <div class="col-md-3  clo-sm-4 col-xs-3">
                             <div class="house_renqi">
                                 <a href="" target="_blank">
                                     <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                     <div class="has_border">
                                         <h3>中原区 - 幸福小区</h3>
                                         <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                     </div>
                                 </a>
                             </div>
                         </div>--%>
                    </div>
                </div>
                <!-- --------------广告推送人气房源完----------------- -->
                <!-- --------------广告推送最新房源----------------- -->
                <div role="tabpanel" class="tab-pane" id="newest">
                    <div class="row">
                        <c:forEach items="${collectionCountList}" var="collection">
                            <div class="col-md-3 clo-sm-4 col-xs-3">
                                <div class="house_renqi">
                                    <a href="javascript:;" target="_blank">
                                        <img class="house_renqi_img" src="images/${collection.picture}" alt="">
                                        <div class="has_border">
                                            <h3>${collection.address}</h3>
                                            <div class="price">
                                                网付价<em>￥</em><strong>${collection.price}</strong><em>起</em>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                        <%--<div class="col-md-3 clo-sm-4 col-xs-3">
                            <div class="house_renqi">
                                <a href="" target="_blank">
                                    <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                    <div class="has_border">
                                        <h3>中原区 - 幸福小区</h3>
                                        <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 clo-sm-4 col-xs-3">
                            <div class="house_renqi">
                                <a href="" target="_blank">
                                    <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                    <div class="has_border">
                                        <h3>中原区 - 幸福小区</h3>
                                        <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 clo-sm-4 col-xs-3">
                            <div class="house_renqi">
                                <a href="" target="_blank">
                                    <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                    <div class="has_border">
                                        <h3>中原区 - 幸福小区</h3>
                                        <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 clo-sm-4 col-xs-3">
                            <div class="house_renqi">
                                <a href="" target="_blank">
                                    <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                    <div class="has_border">
                                        <h3>中原区 - 幸福小区</h3>
                                        <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <!-- --------------广告推送最新房源完----------------- -->
                <!-- --------------广告推送主题----------------- -->
                <div role="tabpanel" class="tab-pane" id="theme">
                    <div class="row">
                        <c:forEach items="${housepushList}" var="house">
                            <div class="col-md-3 clo-sm-4 col-xs-3">
                                <div class="house_renqi">
                                    <a href="javascript:;" target="_blank">
                                        <img class="house_renqi_img" src="images/${house.picture}" alt="">
                                        <div class="has_border">
                                            <h3>${house.address}</h3>
                                            <div class="price">网付价<em>￥</em><strong>${house.price}</strong><em>起</em>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>
                        <%--<div class="col-md-3 clo-sm-4 col-xs-3">
                            <div class="house_renqi">
                                <a href="" target="_blank">
                                    <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="">
                                    <div class="has_border">
                                        <h3>中原区 - 幸福小区</h3>
                                        <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <!-- --------------广告推送主题完----------------- -->
            </div>
        </div>
        <!-- ------------------------广告推完--------------------------- -->
    </section>


    <!-- ------------------------新房源推--------------------------- -->
    <section class="hemai_jx">
        <!-- ----------------新房源推送头部------------------- -->
        <div class="jx_top">
            <div class="jx_tit">
                <img src="img/icon_5.jpg" alt=""><span class="span_bag"><span class="spancontext">新房源</span></span>
            </div>
        </div>
        <!-- ----------------新房源推送头部完------------------- -->
        <!-- ----------------新房源内容------------------- -->
        <div class="heima_gn">
            <!-- <div class="guonei_l">
                <img src="img/loginbagimg.jpg" alt="">
            </div> -->
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${houseList}" var="hou">
                        <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                            <div class="newhouse_renqi">
                                <a href="route_detail.html" target="_blank">
                                    <img class="house_renqi_img" src="images/${hou.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${hou.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${hou.price}</strong><em>起</em></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>


                    <%-- <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>--%>
                </div>
            </div>
        </div>
        <!-- ----------------新房源推送内容完------------------- -->
    </section>


    <!-- ------------------------房源整租  --------------------------- -->
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="img/icon_5.jpg" alt="">
                <span class="span_bag"><span class="spancontext">房源主题——整租</span></span>
            </div>
        </div>
        <!--类型 -->
        <div class="heima_gn" id="newtype2">
            <!-- <div class="guonei_l">
                <img src="images/22.jpg" alt="">
            </div> -->
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${renttypeByZeroList}" var="housename">
                        <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                            <div class="newhouse_renqi">
                                <a href="route_detail.html" target="_blank">
                                    <img class="house_renqi_img" src="images/${housename.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${housename.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${housename.price}</strong><em>起</em>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>


                    <%-- <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>

                     <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                         <div class="newhouse_renqi">
                             <a href="" target="_blank">
                                 <img class="house_renqi_img" src="img/loginbagimg.jpg" alt=""
                                      onmousemove="houseIntroduce_bag_show(this)">
                                 <div class="has_border">
                                     <h3>中原区 - 幸福小区</h3>
                                     <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                 </div>
                             </a>
                         </div>
                         <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                             <a href="#" target="_blank">
                                 <h1>介绍标题</h1>
                                 <p>houseIntroducehouseIntroducehouseIntroducehou
                                     seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                             </a>
                         </div>
                     </div>--%>
                </div>
            </div>
        </div>
    </section>

    <!-- ------------------------房源合租  --------------------------- -->
    <section class="hemai_jx">
        <div class="jx_top">
            <div class="jx_tit">
                <img src="img/icon_5.jpg" alt="">
                <span class="span_bag"><span class="spancontext">房源主题——合租</span></span>
            </div>
        </div>
        <!--类型 -->
        <div class="heima_gn" id="newtype">
            <!-- <div class="guonei_l">
                <img src="images/22.jpg" alt="">
            </div> -->
            <div class="guone_r">
                <div class="row">
                    <c:forEach items="${renttypeByOneList}" var="housename">
                        <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                            <div class="newhouse_renqi">
                                <a href="route_detail.html" target="_blank">
                                    <img class="house_renqi_img" src="images/${housename.picture}" alt="">
                                    <div class="has_border">
                                        <h3>${housename.address}</h3>
                                        <div class="price">网付价<em>￥</em><strong>${housename.price}</strong><em>起</em>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    <%--<div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                        <div class="newhouse_renqi">
                            <a href="" target="_blank">
                                <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="" onmousemove="houseIntroduce_bag_show(this)">
                                <div class="has_border">
                                    <h3>中原区 - 幸福小区</h3>
                                    <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                        <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                            <a href="#" target="_blank">
                                <h1>介绍标题</h1>
                                <p>houseIntroducehouseIntroducehouseIntroducehou
                                    seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                            </a>
                        </div>
                    </div>


                    <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                        <div class="newhouse_renqi">
                            <a href="" target="_blank">
                                <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="" onmousemove="houseIntroduce_bag_show(this)">
                                <div class="has_border">
                                    <h3>中原区 - 幸福小区</h3>
                                    <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                        <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                            <a href="#" target="_blank">
                                <h1>介绍标题</h1>
                                <p>houseIntroducehouseIntroducehouseIntroducehou
                                    seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                        <div class="newhouse_renqi">
                            <a href="" target="_blank">
                                <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="" onmousemove="houseIntroduce_bag_show(this)">
                                <div class="has_border">
                                    <h3>中原区 - 幸福小区</h3>
                                    <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                        <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                            <a href="#" target="_blank">
                                <h1>介绍标题</h1>
                                <p>houseIntroducehouseIntroducehouseIntroducehou
                                    seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                        <div class="newhouse_renqi">
                            <a href="" target="_blank">
                                <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="" onmousemove="houseIntroduce_bag_show(this)">
                                <div class="has_border">
                                    <h3>中原区 - 幸福小区</h3>
                                    <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                        <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                            <a href="#" target="_blank">
                                <h1>介绍标题</h1>
                                <p>houseIntroducehouseIntroducehouseIntroducehou
                                    seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-3 col-md-3 clo-sm-4 col-xs-3">
                        <div class="newhouse_renqi">
                            <a href="" target="_blank">
                                <img class="house_renqi_img" src="img/loginbagimg.jpg" alt="" onmousemove="houseIntroduce_bag_show(this)">
                                <div class="has_border">
                                    <h3>中原区 - 幸福小区</h3>
                                    <div class="price">网付价<em>￥</em><strong>1000</strong><em>起</em></div>
                                </div>
                            </a>
                        </div>
                        <div class="houseIntroduce_bag" onmouseout="houseIntroduce_bag_none(this)">
                            <a href="#" target="_blank">
                                <h1>介绍标题</h1>
                                <p>houseIntroducehouseIntroducehouseIntroducehou
                                    seIntroducehouseIntroducehouseIntroducehouseIntroduce</p>
                            </a>
                        </div>
                    </div>--%>
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
