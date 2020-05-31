package cn.beizhen.service.impl;

import cn.beizhen.mapper.House_pushMapper;
import cn.beizhen.service.House_pushServlce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 2020年5月21日23:26:11
 * 推送表
 */
@Service
public class House_pushImpl implements House_pushServlce {

    @Autowired
    private House_pushMapper house_pushMapper;
}
