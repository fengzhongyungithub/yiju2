package cn.beizhen.mapper;

import cn.beizhen.entity.Admin;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

@org.apache.ibatis.annotations.Mapper
public interface AdminMapper extends Mapper<Admin> {

    @Select("select * from admin where code = #{code} and password = #{password};")
    public Admin login(String code, String password);

}
