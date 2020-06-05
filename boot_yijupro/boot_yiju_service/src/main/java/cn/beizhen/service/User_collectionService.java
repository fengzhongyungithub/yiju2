package cn.beizhen.service;

import cn.beizhen.entity.House;

import java.util.List;

/**
 * 2020年5月22日09:26:27
 * 收藏表
 */
public interface User_collectionService {
    /**
     * 2020年5月20日21点06分
     * 孟希
     * 获取登陆账号的收藏列表---按照合租或整租不同类型 分页展示
     * @param
     * @return
     */


    public List<House> searchCollectionByType(Integer id, String renttype);
    /**
     * 2020年5月29日21点06分
     * 孟希
     * 获取被收藏次数
     * @param
     * @return
     */

    int findCount(int house_Id);

}
