<%@ page language="java"
         import="cn.jbit.service.Impl.TopicServiceImpl,cn.jbit.service.TopicService"
         pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>编辑主题--管理后台</title>
    <script type="text/javascript">
        function check() {
            var tname = document.getElementById("tname");

            if (tname.value == "") {
                alert("请输入主题名称！！");
                tname.focus();
                return false;

            }
            return true;
        }
    </script>
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="header">
    <div id="welcome">欢迎使用新闻管理系统！</div>
    <div id="nav">
        <div id="logo">
            <img src="images/logo.jpg" alt="新闻中国"/>
        </div>
        <div id="a_b01">
            <img src="images/a_b01.gif" alt=""/>
        </div>
    </div>
</div>
<div id="admin_bar">
    <div id="status">
        管理员： 登录 &#160;&#160;&#160;&#160; <a href="#">login out</a>
    </div>
    <div id="channel"></div>
</div>
<div id="main">
    <%@include file="console_element/left.html" %>
    <%--  <div>
	    <iframe src="console_element/top.html" scrolling="no" frameborder="0" width="947px" height="180px"></iframe>
	  </div> 
      <div id="opt_list">
      	<iframe src="console_element/left.html" scrolling="no" frameborder="0" width="130px"></iframe>
      </div> --%>
    <div id="opt_area">

        <ul class="classlist">
            <c:forEach items="${requestScope.list}" var="topic">
                <li> &#160;&#160;&#160;&#160; ${topic.tname} &#160;&#160;&#160;&#160; <a
                        href="newspages/topic_modify.jsp?tid=${topic.tid}&tname=${topic.tname}">修改</a> &#160;&#160;&#160;&#160;
                    <a href="topicServlet?opr=delete&tid=${topic.tid}">删除</a></li>
            </c:forEach>

            <%--
                        <li> 国内
                            &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                            &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>
                        </li>
                        <li> 国际
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 军事
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 体育
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 娱乐
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 社会
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 财经
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 科技
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 健康
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 汽车
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 教育
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 房产
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 家居
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                                  &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 旅游
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 文化
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>
                        <li> 其他
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="topic_modify.jsp">修改</a>
                           &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">删除</a>

                        </li>--%>

        </ul>
    </div>
    <%-- <iframe src="console_element/bottom.html" scrolling="no" frameborder="0" width="947px" height="190px"></iframe>--%>
</div>
<div id="footer">
    <%@ include file="console_element/bottom.html" %>
</div>
</body>
</html>