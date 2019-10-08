<%@ page import="cn.jbit.service.TopicService" %>
<%@ page import="cn.jbit.service.Impl.TopicServiceImpl" %>
<%@ page import="cn.jbit.javabean.Topic" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: object
  Date: 2019/9/18
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    TopicService ts = new TopicServiceImpl();

    String opr = request.getParameter("opr");
    if (opr.equals("delete")) {

    } else if (opr.equals("update")) {
        String tid = request.getParameter("tid");
        String tname = request.getParameter("tname");
        Topic t = new Topic();
        t.setId(Integer.parseInt(tid));

        t.setName(tname);
        int i = ts.updateTopic(t);
        if (i == -1) {
            out.print("<script type=\"text/javascript\">");
            out.print("alert(\"当前主题已存在，请输入不同的主题！\");");
            out.print("location.href=\"../newspages/topic_modify.jsp?tid="
                    + tid + "&tname=" + tname + "\";");
            out.print("</script>");
        } else if (i == 0) {
            out.print("<script type=\"text/javascript\">");
            out.print("alert(\"未找到相关主题，点击确认返回主题列表\");");
            out.print("location.href=\"topic_control.jsp?opr=list\";");
            out.print("</script>");
        } else if (i > 0) {

            out.print("<script type=\"text/javascript\">");
            out.print("alert(\"已经成功更新主题，点击确认返回主题列表\");");
            out.print("location.href=\"topic_control.jsp?opr=list\";");
            out.print("</script>");
        } else {
            out.print("<script type=\"text/javascript\">");
            out.print("alert(\"添加失败，请联系管理员！点击确认返回主题列表\");");
            out.print("location.href=\"topic_control.jsp?opr=list\";");
            out.print("</script>");
        }

    } else if (opr.equals("list")) {
        List<Topic> list = ts.findAllTopics();
        request.setAttribute("list", list);
        request.getRequestDispatcher("topic_list.jsp").forward(request, response);
    } else if (opr.equals("add")) {

    }




%>


</body>
</html>
