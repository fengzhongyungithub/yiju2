package cn.jbit.dao.Impl;

import cn.jbit.entity.Topic;
import cn.jbit.service.Impl.TopicServiceImpl;
import cn.jbit.service.TopicService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TopicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String contextPath = request.getContextPath();
        String opr = request.getParameter("opr");
        TopicService topicsService = new TopicServiceImpl();
        if ("del".equals(opr)) {
            String tid = request.getParameter("tid");
            int result = topicsService.deleteTopic(Integer.parseInt(tid));
            if (result == 1) {
                List<Topic> list = topicsService.findAllTopics();
                request.getSession().setAttribute("list", list);
                out.print("<script type='text/javascript'>"
                        + "alert('已经成功删除主题，点击确认返回原来页面！');"
                        + "location.href='" + contextPath + "/topicServlet?opr=list';"
                        + "</script>");
            } else if (result == -1) {
                out.print("<script type='text/javascript'>"
                        + "alert('删除主题失败！请联系管理员查找原因！点击确认返回原来页面！');"
                        + "location.href='" + contextPath + "/TopicServlet?opr=list';"
                        + "</script>");
            } else {
                out.print("<script type='text/javascript'>"
                        + "alert('该主题下还有文章，不能删除！');"
                        +"location.href='"+contextPath + "/TopicServlet?opr=list';"
                        + "</script>");
            }

        } else if ("update".equals(opr)) {
            String tid = request.getParameter("tid");
            String tname = request.getParameter("tname");
            Map<String, String> topic = new HashMap<String, String>();
            topic.put("tid", tid);
            topic.put("tname", tname);
            Topic topicByName = topicsService.findTopicByName(tname);
            if (topicByName == null) {
                if (topicsService.updateTopic(topicByName) > 0) {
                    out.print("<script type='text/javascript'>"
                            + "alert('已经成功更新主题，点击确认返回主题列表');" + "location.href='"
                            + contextPath + "/topicServlet?opr=list';</script>");
                } else {
                    out.print("<script type='text/javascript'>"
                            + "alert('更新主题失败，点击确认返回主题列表');" + "location.href='"
                            + contextPath + "/newspages/topic_list.jsp';	</script>");
                }
            } else {
                out.print("<script type='text/javascript'>"
                        + "alert('更新主题失败，此主题已经存在');" + "location.href='"
                        + contextPath + "/newspages/topic_modify.jsp?tid="+tid+"&tname="+tname+"';	</script>");
            }


        } else if ("list".equals(opr)) {
            List<Topic> allTopics = topicsService.findAllTopics();
            request.setAttribute("allTopics", allTopics);
            request.getRequestDispatcher("/newspages/topic_list.jsp").forward(request, response);


        } else if ("add".equals(opr)) {
            String tname = request.getParameter("tname");
            int num = topicsService.addTopic(tname);
            if (num == -1) {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"当前主题已存在，请输入不同的主题！\");");
                out.print("location.href=\"" + contextPath
                        + "/newspages/topic_add.jsp\";");
                out.print("</script>");
            }else{
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"主题创建成功，点击确认返回主题列表！\");");
                out.print("location.href=\"" + contextPath
                        + "/topicServlet?opr=list\";");
                out.print("</script>");
            }


        }

        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
