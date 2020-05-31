package cn.beizhen.service.impl;

import cn.beizhen.mapper.User_collectionMapper;
import cn.beizhen.service.User_collectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 2020年5月22日09:26:27
 * 收藏表
 */
@Service
public class User_collectionImpl implements User_collectionService {

    @Autowired
    private User_collectionMapper collectionMapper;
}
