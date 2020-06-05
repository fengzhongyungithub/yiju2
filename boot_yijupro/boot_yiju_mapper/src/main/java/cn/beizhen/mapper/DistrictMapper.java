package cn.beizhen.mapper;

import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Map;
/**
 * 2020年5月9日14:31:30
 * 孟希
 * 获取城市
 * @param map
 * @return
 */
@Mapper
@Repository
public interface DistrictMapper {

    @MapKey("id")
    public Map<String,String> getAll();

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 通过输入栏的内容获取城市
     * @param map
     * @return
     */
    public String findByInput(@Param("type") int type,@Param("district_name") String place);


}
