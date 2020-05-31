package cn.beizhen.controller;

import cn.beizhen.service.UserService;
import cn.beizhen.entity.House;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping("/collect")
public class CollectionController {

    @Resource
    private UserService userService;
    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取登陆账号的收藏列表 分页展示
     * @param
     * @return
     */

    //根据登陆账号的饿id搜索收藏列表
    @RequestMapping("/searchCollection")
    public String searchCollection(@RequestParam(name = "id")String id, @RequestParam(name = "pageIndex",defaultValue="1") Integer pageIndex,
                                   @RequestParam(name = "pageSize",defaultValue="4")Integer pageSize, Model model){
        //根据登陆账号的饿id搜索收藏列表
        Integer tendId=id!=null?Integer.parseInt(id):0;
        PageHelper.startPage(pageIndex,pageSize);
        List<House> list=userService.getPage(tendId);
        PageInfo<House> pageInfo=new PageInfo<>(list,pageSize);
        model.addAttribute("houses",pageInfo.getList());
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("id",tendId);
        return "myfavorite";
    }

}
