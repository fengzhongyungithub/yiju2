package cn.beizhen.service.impl;

import cn.beizhen.mapper.House_reportMapper;
import cn.beizhen.service.House_reportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 2020年5月21日23:30:18
 * 房屋举报表
 */
@Service
public class House_reportImpl implements House_reportService {

    @Autowired
    private House_reportMapper house_reportMapper;
}
