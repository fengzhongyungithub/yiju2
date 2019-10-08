package cn.jbit.service.Impl;

import cn.jbit.dao.Impl.NewsDaoImpl;
import cn.jbit.dao.Impl.TopicDaoImpl;
import cn.jbit.dao.NewsDao;
import cn.jbit.dao.TopicDao;
import cn.jbit.entity.Topic;
import cn.jbit.service.TopicService;

import java.util.List;

public class TopicServiceImpl implements TopicService {
    TopicDao td = new TopicDaoImpl();
    @Override
    public List<Topic> findAllTopics() {
        return td.getAllTopics();
    }

    @Override
    public int updateTopic(Topic topic) {

        return td.updateTopic(topic);
    }

    @Override
    public Topic findTopicByName(String name) {
        return td.findTopicByName(name);
    }

    @Override
    public int addTopic(String name) {
        return td.addTopic(name);
    }

    @Override
    public int deleteTopic(int tid) {
        int result = 0;
        NewsDao nd = new NewsDaoImpl();
        int count = nd.getNewsCountByTID(tid);
        if (count == 0) {
            result = td.deleteTopic(tid);
        } else {
            result = -1;
        }

        return result;
    }

}
