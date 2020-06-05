package cn.beizhen.mapper;

import cn.beizhen.entity.Sys_position;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface Sys_positionMapper {
    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改前提------展示房屋详情地址
     * @return
     */
    List<Sys_position> findByCondition(@Param("area_index") String condition);
    /**
     * 孟希
     * 2020年6月1日15点07分
     * 房东修改前提------展示房屋详情省份
     * @return
     */
    List<Sys_position> findProvince(@Param("area_code") String area_code);
}
