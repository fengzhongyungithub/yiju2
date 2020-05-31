package cn.beizhen.mapper;

import cn.beizhen.entity.House;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

@org.apache.ibatis.annotations.Mapper
public interface HouseMapper extends Mapper<House> {
    //首页展示不同的房屋信息

    @Select("select * from house where state= 0 order by id desc limit 4")
    public List<House> ShowDifferentHouse();


    @Select("select * from house  order by id desc limit ${size} ")
    public List<House> findAll(@Param("size") int size);


    @Select("select * from house order by rname desc limit 6 ")
    public List<House> findAllByrname();

    @Select("SELECT * FROM house order by collectionCount desc limit 4")
    public List<House> findByCollectionCount();


    @Select("SELECT * FROM house order by housepush desc limit 4")
    public List<House> findByHousepush();


    /**
     * 2020年5月9日12:15:47
     * 尹天健
     * 查询房屋所有信息
     * @return
     */
    public List<House> houseList(Map map);
    /**
     * 2020年5月9日14:31:30
     * 尹天健
     * 查询单个房屋信息
     * @param map
     * @return
     */
    public House houseOne(Map map);

    /**
     * 孟希
     * 2020年11点41分
     * 首页搜索想要的房屋类型
     * @return
     */
    List<House> findByCondition(@Param("condition") String condition);

    Integer addHouse(Map map);//发布房源
}
