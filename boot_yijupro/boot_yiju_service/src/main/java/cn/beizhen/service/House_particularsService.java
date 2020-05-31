package cn.beizhen.service;

import cn.beizhen.entity.House_particulars;

import java.util.Map;

/**
 * 房屋详细表
 * 2020年5月9日17:06:22
 */
public interface House_particularsService {

    /**
     * 按照房屋ID查询房屋详细表
     * 2020年5月9日17:23:20
     * 尹天健
     * @return
     */
    public House_particulars House_particularsOne(Map map);
}
