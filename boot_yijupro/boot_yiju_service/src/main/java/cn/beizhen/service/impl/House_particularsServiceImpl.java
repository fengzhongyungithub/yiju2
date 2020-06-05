package cn.beizhen.service.impl;

import cn.beizhen.entity.House_particulars;
import cn.beizhen.mapper.House_particularsMapper;
import cn.beizhen.service.House_particularsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 房屋详细表
 * 2020年5月9日17:06:22
 */
@Service
public class House_particularsServiceImpl  implements House_particularsService {
    @Autowired
    private House_particularsMapper house_particularsMapper;

    /**
     * 按照房屋ID查询房屋详细表
     * 2020年5月9日17:22:57
     * 尹天健
     * @return
     */
    public House_particulars House_particularsOne(Map map){
        return house_particularsMapper.House_particularsOne(map);
    }
}
