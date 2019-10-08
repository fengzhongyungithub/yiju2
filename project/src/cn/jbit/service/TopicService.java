package cn.jbit.service;

import cn.jbit.entity.Topic;

import java.util.List;

public interface TopicService {
    // 获取所有主题
    public List<Topic> findAllTopics();

    // 更新所有主题
    public int updateTopic(Topic topic);

    // 根据名字查找主题
    public Topic findTopicByName(String name);

    // 添加主题
    public int addTopic(String name);

    // 通过tid删除主题
    public int deleteTopic(int tid);
}
