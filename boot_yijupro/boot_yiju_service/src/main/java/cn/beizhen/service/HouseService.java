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
   * @author Mr.Wang
   * @date 2020/6/3 15:21
   * @param size
   * @methodName findby0renttype
   * @return java.util.List<cn.beizhen.entity.House> <br>
   *     @UpdateUser: Mr.Wang<br>
   *     @UpdateDate: 2020/6/3 15:21<br>
   *     @UpdateRemark: 暂无修改<br>
   * @since JDK 1.8
   * @description:  整租
   * @version
   * @throws
   */
  public List<House> findbyZerorenttype(int size);
  /**
   * @author Mr.Wang
   * @date 2020/6/3 15:20
   * @param size
   * @methodName findby1renttype
   * @return java.util.List<cn.beizhen.entity.House> <br>
   *     @UpdateUser: Mr.Wang<br>
   *     @UpdateDate: 2020/6/3 15:20<br>
   *     @UpdateRemark: 暂无修改<br>
   * @since JDK 1.8
   * @description:
   * @version
   * @throws
   */
  public List<House> findbyOnerenttype( int size);
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
    /**
     * 孟希
     * 2020年5月21日15点07分
     * 房东撤回发布的房源
     * @return
     */
    int deltByUserId(Integer userid,Integer id);

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改房屋信息
     * @return
     */

    boolean updateHouse(House house);

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 查看房屋信息
     * @return
     */
    House SearchHouse(int id);
}
