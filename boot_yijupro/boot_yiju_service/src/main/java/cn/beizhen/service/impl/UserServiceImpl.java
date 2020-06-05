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
    @Override
    public User userOne(Map map){
        return userMapper.userOne(map);
    }


    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取登陆账号的收藏列表 分页展示
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
     */
    @Override
    public boolean userRegister(User user){
        return userMapper.userRegister(user);
    }

    /**
     * 2020年5月21日17点00分
     * 孟希
     * 获取房东的个人信息-
     *
     * @param userid
     * @return
     */
    @Override
    public User findUser(Integer userid) {
        return userMapper.findUser(userid);
    }

    /**
     * 2020年5月22日17点00分
     * 孟希
     * 用户注册
     *
     * @param user
     * @return
     */
    @Override
    public boolean Register(User user) {
        return userMapper.Register(user);
    }

    /**
     * 2020年5月25日17点00分
     * 孟希
     * 修改用户信息
     *
     * @param user
     * @return
     */
    @Override
    public boolean updateUser(User user) {
        return userMapper.updateUser(user);
    }

    /**
     * 2020年5月25日17点00分
     * 孟希
     * 修改密码----判断原密码是否正确
     *
     * @param userid
     * @return
     */
    @Override
    public String getPass(Integer userid) {
        return userMapper.getPass(userid);
    }

    /**
     * 2020年5月25日17点00分
     * 孟希
     * 获取业主电话号
     *
     * @param userid
     * @return
     */
    @Override
    public User getPhone(Integer userid) {
        return userMapper.getPhone(userid);
    }

    /**
     * 2020年6月25日17点00分
     * 孟希
     * 修改业主电话号
     *
     * @return
     */
    @Override
    public boolean Updatephone(User user) {
        return userMapper.Updatephone(user);
    }
}
