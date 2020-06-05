package cn.beizhen.service.impl;

import cn.beizhen.entity.House;
import cn.beizhen.mapper.HouseMapper;
import cn.beizhen.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class HouseServiceImpl implements HouseService {

    @Autowired
    private HouseMapper houseMapper;

    @Override
    public Integer addHouse(Map map) {
        return houseMapper.addHouse(map);
    }
    @Override
    public List<House> selectHouseByState() {
        return houseMapper.ShowDifferentHouse();
    }

    @Override
    public List<House> findAll(int size) {
        return houseMapper.findAll(size);
    }

    @Override
    public List<House> findAllByRname() {
        return houseMapper.findAllByrname();
    }

    @Override
    public List<House> findbyZerorenttype(int size) {
        return houseMapper.findbyZerorenttype(size);
    }

    @Override
    public List<House> findbyOnerenttype(int size) {
        return houseMapper.findbyOnerenttype(size);
    }

    @Override
    public List<House> findByCollectionCount() {
        return houseMapper.findByCollectionCount();
    }

    @Override
    public List<House> findByHousepush() {
        return houseMapper.findByHousepush();
    }
    /**
     * 孟希
     * 2020年11点41分
     * 首页搜索想要的房屋类型
     *
     * @param condition
     * @return
     */
    @Override
    public List<House> findByCondition(String condition) {
        return houseMapper.findByCondition(condition);
    }

    /**
     * 2020年5月9日12:15:47
     * 尹天健
     * 查询房屋所有信息
     * @return
     */
    public List<House> houseList(Map map){
        return houseMapper.houseList(map);
    }

    /**
     * 2020年5月9日14:31:30
     * 尹天健
     * 查询单个房屋信息
     * @param map
     * @return
     */
    public House houseOne(Map map){ return houseMapper.houseOne(map);}


    /**
     * 孟希
     * 2020年5月21日15点07分
     * 房东撤回发布的房源
     *
     * @param id
     * @return
     */
    @Override
    public int deltByUserId(Integer userid,Integer id) {
        return houseMapper.deltByUserId(userid,id);
    }

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改房屋信息
     *
     * @param house
     * @return
     */
    @Override
    public boolean updateHouse(House house) {
        return houseMapper.updateHouse(house);
    }

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 查看房屋信息
     *
     * @param id
     * @return
     */
    @Override
    public House SearchHouse(int id) {
        return houseMapper.SearchHouse(id);
    }
}
