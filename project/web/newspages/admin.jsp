<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath1 = request.getContextPath();
%>
<c:choose>

    <c:when test="${sessionScope.allNewslist==null}">

        <c:redirect url="/newsServlet?opr=list" />
    </c:when>
    <c:otherwise>


        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <html>
        <head>
            <title>添加主题--管理后台</title>
            <link href="../css/admin.css" rel="stylesheet" type="text/css"/>
        </head>

        <body>
        <%
            String contextPath = request.getContextPath();

        %>
        <div id="header">
            <div id="welcome">欢迎使用新闻管理系统！</div>
            <div id="nav">
                <div id="logo"><img src="../images/logo.jpg" alt="新闻中国" /></div>
                <div id="a_b01"><img src="../images/a_b01.gif" alt="" /></div>
            </div>
        </div>
        <div id="admin_bar">
            <div id="status">管理员： 登录 &#160;&#160;&#160;&#160; <a href="#">login out</a></div>
            <div id="channel"></div>
        </div>

        <div id="main">
            <%@include file="console_element/left.html" %>
                <%-- <div>
                  <iframe src="<%=contextPath+"/newspages/console_element/top.html"%>" scrolling="no" frameborder="0" width="947px" height="180px"></iframe>
                </div>
                <div id="opt_list">
                   <iframe src="<%=contextPath+"/newspages/console_element/left.html"%>" scrolling="no" frameborder="0" width="130px"></iframe>
                </div>--%>
            <div id="opt_area">
                <script type="text/javascript" >
                    function clickdel(nid){
                        if (confirm("此新闻的相关评论也将删除，确定删除吗？"))
                           // window.location='../newsServlet?opr=delete&amp;nid='+nid;
                            location.href = "../newsServlet?opr=delete&nid="+nid;
                    }

                </script>

                <ul class="classlist">
                    <c:forEach items="${sessionScope.allNewslist}" var="news" varStatus="i">
                        <li>${news.ntitle}<span> 作者：${news.nauthor} &#160;&#160;&#160;&#160;
<a href='http://localhost:8080/project/newsServlet?opr=toModifyNews&nid=${news.nid}'>修改</a> &#160;&#160;&#160;&#160;
<a href='javascript:;' onclick='return clickdel(${news.nid})'>删除</a></span></li>

                        <c:if test="${i.count%5==0}">
                            <li class="space"></li>


                        </c:if>
                    </c:forEach>
                    <c:remove var="allNewslist" scope="session"/>

                </ul>
            </div>
        </div>
        <div id="footer">
            <%@include file="console_element/bottom.html" %>


        </div>
        </body>
        </html>
    </c:otherwise>
</c:choose>