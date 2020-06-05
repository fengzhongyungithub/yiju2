<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE PUBLIC html "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta http-equiv="Cache-Control" content="no-transform" /><meta name="applicable-device" content="pc"><meta name="baidu-site-verification" content="6k9hxRmxzD" /><meta name="sogou_site_verification" content="QWfsCQiayS"/><meta name="360-site-verification" content="f2abba3b5b4f63e3118715cfdb1ed136" /><meta name="shenma-site-verification" content="1540c93d56885a23ea91cd55bb6f99ae_1520485513"/>
<title>城市房产_二手房|新房|租房|公寓|旅居|海外|装修|房价-真房源平台-宜居找房</title>
<link rel="stylesheet" href="https://s1.ljcdn.com/pegasus/pc/asset/common.css?_v=2020050715514574">
<link rel="stylesheet" href="https://s1.ljcdn.com/pegasus/pc/asset/city/main.css?_v=2020050715514574">
<style type="text/css">
    .lianjia-link-box .fl{
        width: 85%;
    }
</style>
<!--[if lt IE 9]>
<script type="text/javascript" src="https://s1.ljcdn.com/pegasus/dep/common-require/html5.js?_v=2020050715514574"></script><![endif]-->


</head><body>


<div class="wrapper">
    <ul class="city_nav_group">
        <li class="city_nav city_nav_selected">
            <a>国内城市</a>
        </li>
    </ul>
    <div class="city_search">
        <div class="search_wrapper">
            <form action="/findByInput">
                <input type="text" placeholder="搜索城市" class="sug-input" name="sug">
                <input type="submit" class="btn btn_blue search_btn" value="搜索" ></input>
            </form>


        </div>
    </div>

</div>
<div class="city_selection_section">
    <div class="city-item">


    <div class="city_recommend">
        <div class="city-item VIEWDATA" data-view-evtid="11920" data-view-event="$pageview" data-action="Uicode=选择城市_国内">

            <div class="city_list_section">
                <ul class="city_list_ul">
                    <li class="city_list_li city_list_li_selected">
                        <div class="city_firstletter">

                            <i></i>
                        </div>
                        <div class="city_list">
                            <div class="city_province">
                            <c:forEach items="${key}" var="city">
                                <div class="city_list_tit c_b"> ${city.key}</div>
                                <c:set value="${fn:split(city.value, ',') }" var="strList" />
                                <ul>
                                    <c:forEach items="${strList}" var="strname" varStatus="i">
                                        <c:choose>
                                            <c:when test="${i.index%2==0}">
                                                <c:set value="${strname}" var="cc"></c:set>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="CLICKDATA" data-click-evtid="11918" data-click-event="WebClick" ><a href="/route/main?id=${cc}"> ${strname}</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </ul>
                            </c:forEach>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>



