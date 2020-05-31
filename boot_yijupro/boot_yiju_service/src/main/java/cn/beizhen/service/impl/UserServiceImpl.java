package cn.beizhen.service.impl;


import cn.beizhen.entity.House;
import cn.beizhen.entity.User;
import cn.beizhen.mapper.UserMapper;
import cn.beizhen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    /**
     * 2020年5月10日20:26:23
     * 返回单个User对象可用于登录之类
     * @param
     * @return
     */
    public User userOne(Map map){
        return userMapper.userOne(map);
    }


    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取登陆账号的收藏列表 分页展示
     * @param map
     * @return
     */

    @Override
    public List<House> getPage(Integer id) {

        List<House> list=userMapper.getPage(id);

        return list;

    }
    /**
     * 用户注册
     * 2020年5月11日15:04:35
     * 尹天健
     * @return
     */
    public boolean userRegister(User user){
        return userMapper.userRegister(user);
    }
}
