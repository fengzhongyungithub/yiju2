package cn.beizhen.service;

import cn.beizhen.entity.Sys_position;

import java.util.List;

public interface Sys_positioService {
    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改前提------展示房屋详情
     * @return
     */
    List<Sys_position> findByCondition(String condition);

    /**
     * 孟希
     * 2020年6月1日15点07分
     * 房东修改前提------展示房屋详情省份
     * @return
     */
    List<Sys_position> findProvince( String area_code);
}
