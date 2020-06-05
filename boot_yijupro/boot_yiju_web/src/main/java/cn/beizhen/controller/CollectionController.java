package cn.beizhen.controller;

import cn.beizhen.entity.House;
import cn.beizhen.service.UserService;
import cn.beizhen.service.User_collectionService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/collect")
public class CollectionController {

    @Resource
    private UserService userService;
    @Resource
    private User_collectionService user_collectionService;


    /**
     * 2020年5月20日21点06分
     * 孟希
     * 获取登陆账号的收藏列表---按照合租或整租不同类型 分页展示
     * @param
     * @return
     */

    //根据登陆账号的饿id搜索收藏列表
    @RequestMapping("/searchCollectionByType")
    public String searchCollectionByType(@RequestParam(name = "pageIndex",defaultValue="1") Integer pageIndex,
                                         @RequestParam(name = "pageSize",defaultValue="4")Integer pageSize,
                                         @RequestParam(name = "renttype",defaultValue = "1")Integer renttype, Model model, HttpSession session){
        //根据登陆账号的饿id搜索收藏列表
      /*  User user=(User)session.getAttribute("User");
        Integer tendId=user.getUserid();*/
        Integer tendId=1;
        String type=renttype==1?"整租":"合租";
        PageHelper.startPage(pageIndex,pageSize);
        List<House> list=user_collectionService.searchCollectionByType(tendId,type);
        System.out.println("l"+list.size());
        PageInfo<House> pageInfo=new PageInfo<>(list,pageSize);
        model.addAttribute("houses",pageInfo.getList());
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("renttype",renttype);
        model.addAttribute("id",tendId);
        return "User_attention_house";
    }
}
