package cn.beizhen.service.impl;


import cn.beizhen.entity.Category;
import cn.beizhen.mapper.CategoryMapper;
import cn.beizhen.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;
    @Override
    public List<Category> findALl() {
        return categoryMapper.selectAll();
    }

}
