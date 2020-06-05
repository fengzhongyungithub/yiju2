package cn.beizhen.mapper;

import cn.beizhen.entity.HouseImg;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 房屋图片表
 * 2020年5月9日10:25:04
 */

@Mapper
public interface HouseImgMapper {
    /**
     * 2020年5月12日21:17:46
     * 尹天健
     * 查询houseimg表里面的房屋图片，详情页面用的
     * @param houseId
     * @return
     */
    @Select("select * from houseimg where houseId =#{houseId}")
    public List<HouseImg> houseImgList(int houseId);
}
