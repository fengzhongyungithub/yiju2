<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java"  pageEncoding="utf-8" %>
<%@ page import="cn.jbit.entity.News" %>
<%@ page import="cn.jbit.entity.Topic" %>
<%@ page import="cn.jbit.entity.Page" %>
<%@ page import="cn.jbit.service.Impl.NewsServiceImpl" %>
<%@ page import="cn.jbit.service.Impl.TopicServiceImpl" %>
<%@ page import="cn.jbit.service.NewsService" %>
<%@ page import="cn.jbit.service.TopicService" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>


<c:choose>
    <c:when test="${requestScope.list1 == null && requestScope.list2 == null && requestScope.list3 == null}">

        <jsp:forward page="/newsServlet?opr=listTitle"></jsp:forward>

    </c:when>
    <c:otherwise>
        <c:set var="totalPages" value="${requestScope.page.totalPageCount}"/>
        <c:set var="pageIndex" value="${requestScope.page.currPageNo}"/>

        <%
            String path = request.getContextPath();
            String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新闻中国</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <script language="javascript">
        function check(){
            var login_username = document.getElementById("uname");
            var login_password = document.getElementById("upwd");
            if(login_username.value == ""){
                alert("用户名不能为空！请重新填入！");
                login_username.focus();
                return false;
            }else if(login_password.value == ""){
                alert("密码不能为空！请重新填入！");
                login_password.focus();
                return false;
            }
            return true;
        }

        function focusOnLogin(){
            var login_username = document.getElementById("uname");
            login_username.focus();
        }
    </script>
</head>
<body onload="focusOnLogin()">
<div id="header">

    <div id="top_login">
        <form action="userLogin" method="post" onsubmit="return check()">


            <label> 登录名 </label>
            <input type="text" name="uname" value="" class="login_input"/>
            <label> 密&#160;&#160;码 </label>
            <input type="password" name="upwd" value="" class="login_input"/>
            <input type="submit" class="login_sub" value="登录" onclick="login()"/>
            <label id="error"> </label>
            <img src="images/friend_logo.gif" alt="Google" id="friend_logo"/>
        </form>
    </div>
    <div id="nav">
        <div id="logo"><img src="images/logo.jpg" alt="新闻中国"/></div>
        <div id="a_b01"><img src="images/a_b01.gif" alt="" /></div>
        <!--mainnav end-->
    </div>
</div>
<div id="container">
   <%-- <div class="sidebar">
        <h1><img src="images/title_1.gif" alt="国内新闻"/></h1>
        <div class="side_list">
            <ul>
                <li><a href='#'><b> 景区，如何不再依靠门票收入 </b></a></li>
                <li><a href='#'><b> 高考期间中东部地区将现大范围降雨 </b></a></li>
                <li><a href='#'><b> 山西离柳焦煤集团井下人行车发生事故6人死亡 </b></a></li>
            </ul>
        </div>
        <h1><img src="images/title_2.gif" alt="国际新闻"/></h1>
        <div class="side_list">
            <ul>
                <li><a href='#'><b> 习近平在墨国会发表演讲:朋友要老 好酒要陈 </b></a></li>
                <li><a href='#'><b> 普京逮捕铁腕市长展示肌肉向世人表明克宫仍大权在握</b></a></li>
                <li><a href='#'><b> 潘基文祝贺赖斯被任命为美国国家安全顾问 </b></a></li>
                <li><a href='#'><b> 与基地有关组织宣称对巴格达连环爆炸负责 </b></a></li>
            </ul>
        </div>
        <h1><img src="images/title_3.gif" alt="娱乐新闻"/></h1>
        <div class="side_list">
            <ul>
                <li><a href='#'><b> "星跳水立方"决战临近 陈楚生被华谊要求进前三 </b></a></li>
                <li><a href='#'><b> 《新恋爱时代》登东方卫视 《非诚》元素遭删除 </b></a></li>
                <li><a href='#'><b> 《海角七号》导演新片开机 吴宇森等出席 </b></a></li>
                <li><a href='#'><b> 《致命黑兰》佐伊坐拥7种武器 暴力登陆全国院线 </b></a></li>
            </ul>
        </div>
    </div>--%>

    <%@ include file="index-elements/index_sidebar.jsp"%>
    <div class="main">
        <div class="class_type"><img src="images/class_type.gif" alt="新闻中心"/></div>
        <div class="content">
            <ul class="class_date">
               <%-- <li id="class_month"><a href='#'><b> 国内 </b></a> <a href='#'><b> 国际 </b></a> <a href='#'><b> 军事 </b></a>
                    <a href='#'><b> 体育 </b></a> <a href='#'><b> 娱乐 </b></a> <a href='#'><b> 社会 </b></a> <a href='#'><b>
                        财经 </b></a> <a href='#'><b> 科技 </b></a> <a href='#'><b> 健康 </b></a> <a href='#'><b> 汽车 </b></a>
                    <a href='#'><b> 教育 </b></a></li>
                <li id="class_month"><a href='#'><b> 房产 </b></a> <a href='#'><b> 家居 </b></a> <a href='#'><b> 旅游 </b></a>
                    <a href='#'><b> 文化 </b></a> <a href='#'><b> 其他 </b></a></li>--%>


                 <%-- <%
                      TopicService topicService = new TopicServiceImpl();
                      List<Topic> allTopics = topicService.findAllTopics();
                      request.setAttribute("topics", allTopics);
                  %>


                <c:forEach items="${topics}" var="news" varStatus="i">
                    <a class="#">	<b><span>${s.tname}&#160&#160&#160&#160</span></b></a>

                </c:forEach>--%>

                   <c:forEach items="${requestScope.topicList}" var="topic" varStatus="i">
                       <c:if test="${i.count % 11 == 1}"><li id='class_month'></c:if>
                       <a href="newsServlet?opr=listTitle&tid=${topic.tid}"><b>${topic.tname}</b></a>
                       <c:if test="${i.count % 11 == 0}"></li></c:if>
                       <c:set var="n" value="${i.count}"/>
                   </c:forEach>
                   <c:if test="${n % 11 != 0}"></li></c:if>

            </ul>
          <%--  <%
                NewsService ns = new NewsServiceImpl();
                List<News> allNews = ns.findAllNews();
                request.setAttribute("allNews", allNews);

            %>--%>



            <ul class="classlist">
                    <c:choose>
                        <c:when test="${requestScope.newsList == null}"><h6>出现错误，请稍后再试或与管理员联系</h6></c:when>
                        <c:when test="${empty requestScope.newsList}"><h6>抱歉，没有找到相关的新闻</h6></c:when>
                        <c:otherwise>
                            <c:forEach items="${requestScope.newsList}" var="news" varStatus="i">
                                <li>
                                    <a href='http://localhost:8080/project/newsServlet?opr=readNew&nid=${news.nid}'>${news.ntitle}</a>
                                    <span><fmt:formatDate value="${news.ncreatedate}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                </li>
                                <c:if test="${i.count % 5 == 0}"><li class='space'></li></c:if>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    <p align="center"> 当前页数:[${pageIndex}/${totalPages}]&nbsp;
                        <c:if test="${pageIndex > 1}">
                            <a href="newsServlet?opr=listTitle&pageIndex=1">首页</a>&nbsp;
                            <a href="newsServlet?opr=listTitle&pageIndex=${pageIndex - 1}">上一页</a>
                        </c:if>
                        <c:if test="${pageIndex < totalPages}">
                            <a href="newsServlet?opr=listTitle&pageIndex=${pageIndex + 1}">下一页</a>
                            <a href="newsServlet?opr=listTitle&pageIndex=${totalPages}">末页</a>
                        </c:if></p>

            </ul>
           <%-- <c:forEach items="${allNews}" var="n" varStatus="status">
                <c:if test="${status.count %5 == 0 }"><li></br></li></c:if>
                <ul>
                    <li>
                        <a  href="newsServlet?nid=${n.nid}">${n.ntitle}</a>&#160&#160&#160&#160<span>${n.ncreatedate}</span>
                    </li>
                </ul>
            </c:forEach>--%>


        </div>
        <%--<div class="picnews">
            <ul>
                <li><a href="#"><img src="images/Picture1.jpg" width="249" alt=""/> </a><a href="#">幻想中穿越时空</a></li>
                <li><a href="#"><img src="images/Picture2.jpg" width="249" alt=""/> </a><a href="#">国庆多变的发型</a></li>
                <li><a href="#"><img src="images/Picture3.jpg" width="249" alt=""/> </a><a href="#">新技术照亮都市</a></li>
                <li><a href="#"><img src="images/Picture4.jpg" width="249" alt=""/> </a><a href="#">群星闪耀红地毯</a></li>
            </ul>
        </div>--%>

        <%@ include file="index-elements/index_rightbar.html"%>
    </div>
</div>
<%--<div id="footer">
    <iframe src="index-elements/index_bottom.html" scrolling="no" frameborder="0" width="947px" height="190px"></iframe>
</div>--%>
<%@ include file="index-elements/index_bottom.html"%>
</body>
</html>
    </c:otherwise>
</c:choose>