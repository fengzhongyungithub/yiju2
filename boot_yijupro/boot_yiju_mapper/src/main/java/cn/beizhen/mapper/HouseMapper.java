package cn.beizhen.mapper;

import cn.beizhen.entity.House;
import org.apache.ibatis.annotations.Delete;
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


    @Select("select * from house order by rname desc limit 8")
    public List<House> findAllByrname();

    @Select("SELECT * FROM house order by collectionCount desc limit 4")
    public List<House> findByCollectionCount();


    @Select("SELECT * FROM house order by housepush desc limit 4")
    public List<House> findByHousepush();

  /**
   * @author Mr.Wang
   * @date 2020/6/3 15:18
   * @param size
   * @methodName findby0renttype
   * @return java.util.List<cn.beizhen.entity.House> <br>
   *     @UpdateUser: Mr.Wang<br>
   *     @UpdateDate: 2020/6/3 15:18<br>
   *     @UpdateRemark: 暂无修改<br>
   * @since JDK 1.8
   * @description: 整租推送
   * @version
   * @throws
   */
  @Select("SELECT * FROM house where renttype=0 order by housepush desc limit #{size}")
  public List<House> findbyZerorenttype(@Param("size") int size);

  /**
   * @author Mr.Wang
   * @date 2020/6/3 15:19
   * @param size
   * @methodName findby1renttype
   * @return java.util.List<cn.beizhen.entity.House> <br>
   *     @UpdateUser: Mr.Wang<br>
   *     @UpdateDate: 2020/6/3 15:19<br>
   *     @UpdateRemark: 暂无修改<br>
   * @since JDK 1.8
   * @description: 合租推送
   * @version
   * @throws
   */
  @Select("SELECT * FROM house where renttype=1 order by housepush desc limit #{size}")
  public List<House> findbyOnerenttype(@Param("size") int size);

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

    /**
     * 孟希
     * 2020年5月21日15点07分
     * 房东撤回发布的房源
     * @return
     */
    @Delete("DELETE from house where user_Id=${user_Id} and id=${id}")
    int deltByUserId(@Param("user_Id")Integer userid ,@Param("id")Integer id);
    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改房屋信息
     * @return
     */

    boolean updateHouse(House house);

    Integer addHouse(Map map);//发布房源

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 查看房屋信息
     * @return
     */
    House SearchHouse(@Param("id")int id);




}
