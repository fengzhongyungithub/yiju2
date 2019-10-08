package cn.jbit.dao;

import cn.jbit.entity.News;

import java.util.List;

public interface NewsDao {

    // 获取所有新闻
    public List<News> getAllnews();

    // 获取某主题下的所有新闻（根据主题id）
    public List<News> getAllnewsByTID(int Tid);

    // 获取某主题下的所有新闻（根据主题名称）
    public List<News> getAllnewsByTname(String tname);

    // 获取某主题下的新闻数量
    public int getNewsCountByTID(int Tid);

    // 获取某主题下的最新新闻
    public List<News> getLatestNewsByTID(int tid, int limit);

    // 获取某条新闻
    public News getNewsByNID(int nid);

    // 删除某条新闻
    public int deleteNews(int nid);

    // 获得新闻总数
    public int getTotalCount();

    // 分页获得新闻
    public List<News> getPageNewsList(int pageNo, int pageSize);

    //添加新闻
    public int addNews(News news);

    //修改新闻
    public int updateNews(News news);
}
