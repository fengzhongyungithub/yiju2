package cn.jbit.service.Impl;

import cn.jbit.dao.CommentsDao;
import cn.jbit.dao.Impl.CommentsDaoImpl;
import cn.jbit.dao.Impl.NewsDaoImpl;
import cn.jbit.dao.NewsDao;
import cn.jbit.entity.News;
import cn.jbit.entity.Page;
import cn.jbit.service.NewsService;

import java.util.*;

public class NewsServiceImpl implements NewsService {
    NewsDao ns = new NewsDaoImpl();


    @Override
    public List<News> findAllNews() {
        return ns.getAllnews();
    }

    @Override
    public List<News> findAllNewsByTid(int tid) {
        return ns.getAllnewsByTID(tid);
    }

    @Override
    public List<News> findAllNewsByTname(String tname) {
        return ns.getAllnewsByTname(tname);
    }

    @Override
    public List<News> findLatestNewsByTid(int tid, int limit) {
        return ns.getLatestNewsByTID(tid, limit);
    }

    @Override
    public List<List<News>> findLatestNewsByTid(Map<Integer, Integer> topicsMap) {

        List<List<News>> result = null;
        if (topicsMap != null && topicsMap.size() != 0) {
            result = new ArrayList<>();
            Set<Map.Entry<Integer, Integer>> entries = topicsMap.entrySet();
            Iterator<Map.Entry<Integer, Integer>> iterator = entries.iterator();
            while (iterator.hasNext()) {
                  Map.Entry<Integer, Integer> next = iterator.next();
                result.add(ns.getLatestNewsByTID(next.getKey(),next.getValue()));
            }
        }

        return result;
    }

    @Override
    public News findNewsByNid(int nid) {
        return ns.getNewsByNID(nid);
    }

    @Override
    public int deleteNews(int nid) {
        CommentsDao cd = new CommentsDaoImpl();
        cd.delCommentsByCNID(nid);

        return ns.deleteNews(nid);
    }

    @Override
    public void findPageNews(Page pageObj) {
        int totalCount = ns.getTotalCount();
        pageObj.setTotalCount(totalCount);
        if (totalCount > 0) {
            //当前页多于总页数
            if (pageObj.getCurrPageNo() > pageObj.getTotalPageCount()) {
                pageObj.setCurrPageNo(pageObj.getTotalPageCount());
            }
            List<News> news = ns.getPageNewsList(pageObj.getCurrPageNo(), pageObj.getPageSize());
            pageObj.setNewsList(news);
        }else {
            pageObj.setCurrPageNo(0);
            pageObj.setNewsList(new ArrayList<News>());

        }
    }

    @Override
    public int addNews(News news) {
        news.setNcreatedate(new Date());
        news.setNmodifydate(news.getNcreatedate());

        return ns.addNews(news);
    }

    @Override
    public int modifyNews(News news) {
        news.setNmodifydate(new Date());

        return ns.updateNews(news);
    }

}
