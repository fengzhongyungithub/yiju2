package cn.beizhen.mapper;

import cn.beizhen.entity.House;
import cn.beizhen.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 用户Mapper
 * 2020年5月10日20:25:57
 */
@Mapper
public interface UserMapper {
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
     * @return
     */

    public List<House> getPage(@Param("tenantId") Integer id);

    /**
     * 2020年5月21日17点00分
     * 孟希
     * 获取房东的个人信息-
     * @return
     */

    User findUser(@Param("userid")Integer userid);

    /**
     * 2020年5月22日17点00分
     * 孟希
     * 用户注册
     * @return
     */
    boolean Register(User user);
    /**
     * 2020年5月25日17点00分
     * 孟希
     * 修改用户信息
     * @return
     */
    boolean updateUser(User user);
    /**
     * 2020年5月25日17点00分
     * 孟希
     * 修改密码----判断原密码是否正确
     * @return
     */
    String getPass(@Param("userid")Integer userid);
    /**
     * 2020年5月25日17点00分
     * 孟希
     * 获取业主电话号
     * @return
     */
    User getPhone(@Param("userid")Integer userid);
    /**
     * 2020年6月25日17点00分
     * 孟希
     * 修改业主电话号
     * @return
     */
    boolean Updatephone(User user);

}
