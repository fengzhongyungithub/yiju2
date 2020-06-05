package cn.beizhen.mapper;

import cn.beizhen.entity.Code;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CodeMapper {
    /**
     * 2020年5月18日22点16分
     * 孟希
     * code的一系列操作
     * @return
     */
    int insertInfo(Code code);
    String getCode(@Param("phone")String phone);
    int deletCode(@Param("phone")String  phone);
    List<Code> getAll();
}
