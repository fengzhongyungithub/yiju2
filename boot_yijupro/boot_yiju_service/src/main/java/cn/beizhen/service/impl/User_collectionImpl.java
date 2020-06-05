package cn.beizhen.service.impl;

import cn.beizhen.entity.House;
import cn.beizhen.mapper.User_collectionMapper;
import cn.beizhen.service.User_collectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 2020年5月22日09:26:27
 * 收藏表
 */
@Service
public class User_collectionImpl implements User_collectionService {
    @Autowired
    private User_collectionMapper collectionMapper;

    /**
     * 2020年5月20日21点06分
     * 孟希
     * 获取登陆账号的收藏列表---按照合租或整租不同类型 分页展示
     *
     * @param id
     * @return
     */
    @Override
    public List<House> searchCollectionByType(Integer id, String renttype) {
        return collectionMapper.searchCollectionByType(id,renttype);
    }

    /**
     * 2020年5月29日21点06分
     * 孟希
     * 获取被收藏次数
     *
     * @param house_Id@return
     */
    @Override
    public int findCount(int house_Id) {
        return collectionMapper.findCount(house_Id);
    }
}
