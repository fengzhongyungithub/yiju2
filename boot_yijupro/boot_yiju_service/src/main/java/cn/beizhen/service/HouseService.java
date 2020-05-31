package cn.beizhen.service;

import cn.beizhen.entity.House;

import java.util.List;
import java.util.Map;

public interface HouseService {

    Integer addHouse(Map map);//发布房源
    /**
     *主页精选房屋查询
     * @return
     */
    public List<House> selectHouseByState();

    /**
     * 主页新房源查询
     * @return
     */
    public List<House> findAll(int size);

    /**
     * 主页房源主题查询
     * @return
     */
    public List<House> findAllByRname();

    /**
     *
     * @return
     */
    public List<House> findByCollectionCount();

    /**
     * Mr.Wang before
     * @return
     */
    public List<House> findByHousepush();
    /**
     * 孟希
     * 2020年11点41分
     * 首页搜索想要的房屋类型
     * @return
     */
    public List<House> findByCondition(String condition);

    /**
     * 2020年5月9日14:31:30
     * 尹天健
     * 查询单个房屋信息
     * @param map
     * @return
     */
    public House houseOne(Map map);

    /**
     * 2020年5月9日12:15:47
     * 尹天健
     * 查询房屋所有信息
     * @return
     */
    public List<House> houseList(Map map);

}
