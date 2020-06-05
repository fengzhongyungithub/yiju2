package cn.beizhen.mapper;

import cn.beizhen.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CategoryMapper{

    @Select("select * from category")
    public List<Category> selectAll();
}
