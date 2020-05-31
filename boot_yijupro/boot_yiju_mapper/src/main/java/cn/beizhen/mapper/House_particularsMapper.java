package cn.beizhen.mapper;

import cn.beizhen.entity.House_particulars;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

/**
 * 房屋详细表
 * 2020年5月9日17:06:22
 */
@Mapper
public interface House_particularsMapper {
    /**
     * 按照房屋ID查询房屋详细表
     * 2020年5月9日17:22:57
     * 尹天健
     * @return
     */
    public House_particulars House_particularsOne(Map map);
}
