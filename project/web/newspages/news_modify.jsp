<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>新闻中国</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="main">
    <%-- <div>
       <iframe src="console_element/top.html" scrolling="no" frameborder="0" width="947px" height="180px"></iframe>
     </div> --%>
    <%@include file="console_element/left.html" %>
    <%--   <div id="opt_list">
           <iframe src="console_element/left.html" scrolling="no" frameborder="0" width="130px"></iframe>
       </div> --%>
    <div id="opt_area">
        <h1 id="opt_type"> 编辑新闻： </h1>
        <form action="http://localhost:8080/project/newsServlet?opr=modifyNews&nid=${news.nid}" method="post">
            <p>
                <label> 主题 </label>
                <select name="ntid">
                    <%--	<option value='1' selected="selected">国内</option>
                        <option value='2'>国际</option>
                        <option value='3' selected="selected">军事</option>
                        <option value='4'>体育</option>--%>
                    <c:forEach items="${requestScope.topics}" var="topic">
                        <c:choose>
                            <c:when test="${news.ntid == topic.tid}">
                                <option value='${topic.tid}' selected="selected">${topic.tname}</option>
                            </c:when>
                            <c:otherwise>
                                <option value='${topic.tid}'>${topic.tname}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
                <input type="hidden" name="nid" value=""/>
            </p>
            <p>
                <label> 标题 </label>
                <input name="ntitle" type="text" class="opt_input" value="${news.ntitle}"/>
            </p>
            <p>
                <label> 作者 </label>
                <input name="nauthor" type="text" class="opt_input" value="${news.nauthor}"/>
            </p>
            <p>
                <label> 摘要 </label>
                <textarea name="nsummary" cols="40" rows="3">${news.nsummary}</textarea>
            </p>
            <p>
                <label> 内容 </label>
                <textarea name="ncontent" cols="70" rows="10">${news.ncontent} </textarea>
            </p>
            <p>
                <label> 上传图片 </label>
                <input name="file" type="file" class="opt_input"/>
            </p>
            <input type="submit" value="提交" class="opt_sub"/>
            <input type="reset" value="重置" class="opt_sub"/>
        </form>
        <p></p>
        <h1 id="opt_type">
            修改新闻评论：
        </h1>
        <table width="80%" align="left">
            <c:choose>
                <c:when test="${empty news.comments}">

                    <tr>
                        <td colspan="6"> 暂无评论！</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <hr/>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${news.comments}">
                        <tr>
                            <td> 留言人：</td>
                            <td>${comment.cauthor}</td>
                            <td> IP：</td>
                            <td>${comment.cip}</td>
                            <td> 留言时间：</td>
                            <td><fmt:formatDate value="${comment.cdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td>
                                <a href="http://localhost:8080/project/newsServlet?opr=deleteComment&cid=${comment.cid}&nid=${news.nid}">删除</a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6">${comment.ccontent}</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <hr/>
                            </td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </table>
    </div>
</div>
<%--  <iframe src="console_element/bottom.html" scrolling="no" frameborder="0" width="947px" height="190px"></iframe>--%>

<%@ include file="console_element/bottom.html" %>
</div>
</body>
</html>	