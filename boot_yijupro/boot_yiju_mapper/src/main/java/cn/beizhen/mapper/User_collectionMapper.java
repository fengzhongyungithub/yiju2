package cn.beizhen.mapper;


import cn.beizhen.entity.House;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 2020年5月22日09:26:27
 * 收藏表
 */
@Mapper
public interface User_collectionMapper {

    /**
     * 2020年5月20日21点06分
     * 孟希
     * 获取登陆账号的收藏列表---按照合租或整租不同类型 分页展示
     * @param
     * @return
     */


    public List<House> searchCollectionByType(@Param("user_Id") Integer id, @Param("renttype") String renttype);

    /**
     * 2020年5月29日21点06分
     * 孟希
     * 获取被收藏次数
     * @param
     * @return
     */

    int findCount(@Param("house_Id")int house_Id);
}
