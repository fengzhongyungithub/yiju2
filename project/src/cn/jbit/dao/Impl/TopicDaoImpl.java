package cn.jbit.dao.Impl;

import cn.jbit.dao.TopicDao;
import cn.jbit.entity.Topic;
import cn.jbit.util.JDBCUtils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TopicDaoImpl implements TopicDao {
    private List<Topic> list = new ArrayList<>();
    private ResultSet rs = null;
    private Topic topic = null;

    @Override
    public List<Topic> getAllTopics() {
        String sql = "select * from topic";
        rs = JDBCUtils.getAll(sql);
        try {
            while (rs.next()) {
                topic = new Topic();

                topic.setTid(rs.getInt("tid"));
                topic.setTname(rs.getString("tname"));
                list.add(topic);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }

        return list;
    }

    @Override
    public int updateTopic(Topic topic) {
        String sql = "UPDATE `TOPIC` SET `tname` = ? WHERE `tid` = ?";
        int res = 0;

        res = JDBCUtils.update(sql, topic.getTname(), topic.getTid());

        return res;
    }

    @Override
    public Topic findTopicByName(String name) {
        String sql = "select * from topic where tname=?";
        rs = JDBCUtils.getAll(sql, name);
        try {
            while (rs.next()) {
                topic = new Topic();
                list = new ArrayList<Topic>();
                topic.setTid(rs.getInt("tid"));
                topic.setTname(rs.getString("tname"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.closeAll(rs, null, null);
        }
        return topic;
    }

    @Override
    public int addTopic(String name) {
        String sql = "insert into topic(TNAME) values(?)";
        int result = 0;

        result = JDBCUtils.update(sql, name);

        return result;
    }

    @Override
    public int deleteTopic(int tid) {
        String sql = "delete FROM TOPIC WHERE tid = ?";

        return JDBCUtils.update(sql, tid);

    }
}
