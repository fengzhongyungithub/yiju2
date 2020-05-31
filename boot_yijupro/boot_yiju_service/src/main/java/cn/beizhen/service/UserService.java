package cn.beizhen.service;


import cn.beizhen.entity.House;
import cn.beizhen.entity.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    /**
     * 2020年5月10日20:26:23
     * 返回单个User对象可用于登录之类
     * @param
     * @return
     */
    public User userOne(Map map);


    /**
     * 用户注册
     * 2020年5月11日15:04:35
     * 尹天健
     * @return
     */
    public boolean userRegister(User user);

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取登陆账号的收藏列表 分页展示
     * @param
     * @return
     */

    //使用PageHelper分页搜索收藏的房屋
    public List<House> getPage(Integer id);
}
