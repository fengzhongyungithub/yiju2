package cn.jbit.dao;

import cn.jbit.entity.User;

public interface UserDao {
    //查找是否登录成功
    public User findUser(User user);


}
