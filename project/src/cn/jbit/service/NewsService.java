package cn.jbit.service;

import cn.jbit.entity.News;
import cn.jbit.entity.Page;

import java.util.List;
import java.util.Map;

public interface NewsService {

    // 获取所有新闻
    public List<News> findAllNews();

    // 获取某主题下的所有新闻（根据主题id）
    public List<News> findAllNewsByTid(int tid);

    // 获取某主题下的所有新闻（根据主题名称）
    public List<News> findAllNewsByTname(String tname);

    // 获取某主题下的最新新闻
    public List<News> findLatestNewsByTid(int tid, int limit);

    // 初始化一组主题下的最新新闻
    public List<List<News>> findLatestNewsByTid(Map<Integer, Integer> topicsMap);

    //获取某条新闻
    public News findNewsByNid(int nid);

    // 通过nid删除新闻及相关回复
    public int deleteNews(int nid);

    // 分页获取新闻
    public void findPageNews(Page pageObj);

    //添加新闻
    public int addNews(News news);

    //修改新闻
    public int modifyNews(News news);

}
