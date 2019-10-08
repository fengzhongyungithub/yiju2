package cn.jbit.dao;

import cn.jbit.entity.Topic;

import java.util.List;

public interface TopicDao {
    // 获取所有主题
    public List<Topic> getAllTopics();

    // 更新主题
    public int updateTopic(Topic topic);

    // 根据名字查找主题
    public Topic findTopicByName(String name);

    // 添加主题
    public int addTopic(String name);

    // 通过tid删除主题
    public int deleteTopic(int tid);
}
