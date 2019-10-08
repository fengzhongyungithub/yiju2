package cn.jbit.controller;

import cn.jbit.entity.News;
import cn.jbit.entity.Page;
import cn.jbit.entity.Topic;
import cn.jbit.service.CommentsService;
import cn.jbit.service.Impl.CommentsServiceImpl;
import cn.jbit.service.Impl.NewsServiceImpl;
import cn.jbit.service.Impl.TopicServiceImpl;
import cn.jbit.service.NewsService;
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

public class NewsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String contextPath = request.getContextPath();
        String opr = request.getParameter("opr");
        TopicService ts = new TopicServiceImpl();
        NewsService ns = new NewsServiceImpl();
        CommentsService cs = new CommentsServiceImpl();

        if ("list".equals(opr)) {
            List<News> allNewsList = ns.findAllNews();
            request.getSession().setAttribute("allNewslist", allNewsList);
            response.sendRedirect(contextPath + "/newspages/admin.jsp");
        } else if ("toAddNews".equals(opr)) {
            List<Topic> allTopics = ts.findAllTopics();
            request.setAttribute("topicServlet", allTopics);
            request.getRequestDispatcher("/newspages/news_add.jsp").forward(request, response);
        } else if ("readNew".equals(opr)) {
            String nid = request.getParameter("nid");
            News news = ns.findNewsByNid(Integer.parseInt(nid));
            news.setComments(cs.findCommentsByNid(Integer.parseInt(nid)));
            Map<Integer, Integer> map = new HashMap<Integer, Integer>();
            map.put(1, 5);
            map.put(2, 5);
            map.put(5, 5);
            List<List<News>> latestNewsByTid = ns.findLatestNewsByTid(map);
            request.setAttribute("news", news);
            //左侧国内新闻
            request.setAttribute("list1", latestNewsByTid.get(0));
            //左侧国际新闻
            request.setAttribute("list2", latestNewsByTid.get(1));
            //左侧娱乐新闻
            request.setAttribute("list3", latestNewsByTid.get(2));
            request.getRequestDispatcher("/newspages/news_read.jsp").forward(request, response);

        } else if ("listTitle".equals(opr)) {
            Map<Integer, Integer> topicMap = new HashMap<>();
            topicMap.put(1, 5);
            topicMap.put(2, 5);
            topicMap.put(5, 5);
            List<List<News>> latestNewsList = ns.findLatestNewsByTid(topicMap);
            List<Topic> topicList = ts.findAllTopics();
            String tid = request.getParameter("tid");
            List<News> newsList = null;
            //获取当前页数
            String pageIndex = request.getParameter("pageIndex");
            if (pageIndex == null || (pageIndex = pageIndex.trim()).length() == 0) {
                pageIndex = "1";
            }
            int currPage = Integer.parseInt(pageIndex);
            if (currPage < 1)
                currPage = 1;

            Page page = new Page();
            page.setCurrPageNo(currPage);
            //每页显示条数
            page.setPageSize(15);
            if (tid == null || (tid = tid.trim()).length() == 0) {
                ns.findPageNews(page);// 分页查询新闻
                newsList = page.getNewsList();
            } else
                newsList = ns.findAllNewsByTid(Integer.parseInt(tid));
            request.setAttribute("list1", latestNewsList.get(0));// 左侧国内新闻
            request.setAttribute("list2", latestNewsList.get(1));// 左侧国际新闻
            request.setAttribute("list3", latestNewsList.get(2));// 左侧娱乐新闻
            request.setAttribute("topicList", topicList);// 所有的主题
            request.setAttribute("newsList", newsList);// 中间的新闻
            request.setAttribute("page", page);
            request.getRequestDispatcher("/index.jsp").forward(request, response);

        } else if (opr.equals("toModifyNews")) { // 查找所有主题和要修改的新闻
            String nid = request.getParameter("nid");
            News news = ns.findNewsByNid(Integer.parseInt(nid));
            news.setComments(cs.findCommentsByNid(Integer
                    .parseInt(nid)));
            request.setAttribute("news", news);
            request.setAttribute("topics", ts.findAllTopics());
            request.getRequestDispatcher("/newspages/news_modify.jsp")
                    .forward(request, response);
        } else if (opr.equals("deleteComment")) { // 删除一条评论
            String cid = request.getParameter("cid");
            String nid = request.getParameter("nid");
            try {
                int result = cs.deleteCommentById(Integer
                        .parseInt(cid));
                if (result == 0) {
                    out.print("<script type=\"text/javascript\">");
                    out.print("alert(\"未找到相关评论，点击确认返回\");");
                    out.print("location.href=\"" + contextPath
                            + "/newsServlet?opr=toModifyNews&nid=" + nid
                            + "\";");
                    out.print("</script>");
                } else {
                    out.print("<script type=\"text/javascript\">");
                    out.print("alert(\"评论已经成功删除，点击确认返回\");");
                    out.print("location.href=\"" + contextPath
                            + "/newsServlet?opr=toModifyNews&nid=" + nid
                            + "\";");
                    out.print("</script>");
                }
            } catch (Exception e) {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"删除评论失败，请联系管理员！点击确认返回\");");
                out.print("location.href=\"" + contextPath
                        + "/newsServlet?opr=toModifyNews&nid=" + nid + "\";");
                out.print("</script>");
            }
        } else if ("delete".equals(opr)) {
            int nid = Integer.parseInt(request.getParameter("nid"));
            int res = ns.deleteNews(nid);
            if (res == 0) {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"未找到相关新闻，点击确认返回新闻列表\");");
                out.print("location.href=\"" + contextPath
                        + "/newsServlet?opr=list\";");
                out.print("</script>");
            } else {
                out.print("<script type=\"text/javascript\">");
                out.print("alert(\"已经成功删除新闻，点击确认返回新闻列表\");");
                out.print("location.href=\"" + contextPath
                        + "/newsServlet?opr=list\";");
                out.print("</script>");
            }

        } else if ("addNews".equals(opr)|| opr.equals("modifyNews")) {
            String nid = request.getParameter("nid");
            if (nid != null && (nid = nid.trim()).length() > 0) {
                News news = new News();
                news.setNid(Integer.parseInt(nid));
            }

        }

        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
