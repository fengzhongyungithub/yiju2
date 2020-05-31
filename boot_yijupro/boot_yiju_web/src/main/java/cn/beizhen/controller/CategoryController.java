package cn.beizhen.controller;

import cn.beizhen.entity.Category;
import cn.beizhen.service.CategoryService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;


    @GetMapping("/findAll")
    @ResponseBody
    public String findAll() {
        List<Category> categoryList = categoryService.findALl();

        return JSON.toJSONString(categoryList);

    }
}
