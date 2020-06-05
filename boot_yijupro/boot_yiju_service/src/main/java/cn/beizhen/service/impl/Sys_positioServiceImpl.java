package cn.beizhen.service.impl;

import cn.beizhen.entity.Sys_position;
import cn.beizhen.mapper.Sys_positionMapper;
import cn.beizhen.service.Sys_positioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class Sys_positioServiceImpl implements Sys_positioService {
    @Autowired
    private Sys_positionMapper sys_positionMapper;

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改前提------展示房屋详情省份
     *
     * @param condition
     * @return
     */
    @Override
    public List<Sys_position> findByCondition(String condition) {
        return sys_positionMapper.findByCondition(condition);
    }

    /**
     * 孟希
     * 2020年6月1日15点07分
     * 房东修改前提------展示房屋详情省份
     *
     * @param area_code
     * @return
     */
    @Override
    public List<Sys_position> findProvince(String area_code) {
        return sys_positionMapper.findProvince(area_code);
    }
}
