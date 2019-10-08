package cn.jbit.service.Impl;

import cn.jbit.dao.Impl.UserDaoImpl;
import cn.jbit.dao.UserDao;
import cn.jbit.entity.User;
import cn.jbit.service.UserService;

public class UserServiceImpl implements UserService {
    @Override
    public User doLogin(User user) {
        UserDao ud = new UserDaoImpl();

        User us = ud.findUser(user);

        return us;
    }
}
