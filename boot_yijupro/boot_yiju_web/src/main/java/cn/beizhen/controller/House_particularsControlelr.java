package cn.beizhen.controller;

import cn.beizhen.entity.*;
import cn.beizhen.service.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/particulars")
public class House_particularsControlelr {
    @Autowired
    private Sys_positioService sys_positioService;
    @Autowired
    private House_particularsService particularsService;
    @Autowired
    private UserService userService;
    @Autowired
    private HouseService houseService;
    @Autowired
    private User_collectionService collectionService;
    @Autowired
    private HouseImgService houseImgService;

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改前提------展示房屋详情（根据房屋id）
     * @return
     */

    @RequestMapping("/findHouse")
    private String findHouse(@RequestParam("id")String id, Model model, HttpSession session){

        int ceId=id==null?0:Integer.parseInt(id);

        Map<String,Object> map=new HashMap<>();
        map.put("id",ceId);
        House house=houseService.houseOne(map);
        House_particulars house_particulars=particularsService.House_particularsOne(map);
        System.out.println(house);
        System.out.println(house_particulars);

       /* User user=(User) session.getAttribute("User");
        int userid=  user.getUserid();*/
       int userid=1;

       //获取房屋地址--省份
        String condition=null;

        List<Sys_position> list=sys_positioService.findByCondition(condition);
        System.out.println("l"+list);
        //获取房东电话号
        User user=userService.getPhone(userid);
        //获取北收藏次数
        int collect=collectionService.findCount(ceId);
        //获取所有详情图片
        List<HouseImg> houseImgs=houseImgService.houseImgList(ceId);
        model.addAttribute("house",house);
        model.addAttribute("Sys_positionlist",list);
        model.addAttribute("house_particulars",house_particulars);
        model.addAttribute("user",user);
        model.addAttribute("collect",collect);
        model.addAttribute("houseImgs",houseImgs);
        return "User_release";
    }

    /**
     * 孟希
     * 2020年5月28日15点07分
     * 房东修改前提------展示房屋详情（根据房屋id）
     * @return
     */

    @ResponseBody
    @RequestMapping("/findCity")
    public String findCity(@RequestParam("area_index") String area_index){
        System.out.println("area"+area_index);
        List<Sys_position> list=sys_positioService.findByCondition(area_index);
   /*     Map<String,Object> jsonmap=new HashMap<>();
        if (list!=null && list.size()>0){
            jsonmap.put("result",list);
        }
        else {
            jsonmap.put("result","fail");
        }
        System.out.println("j"+jsonmap);*/
        return JSONArray.toJSONString(list);
    }


    /**
     * 孟希
     * 2020年6月1日15点07分
     * 房东修改
     * @return
     */

    @RequestMapping(value = "/updateHouse")
    @ResponseBody
    public  String updateHouse(@RequestBody UpdateHouse updateHouse)  {
        Map<String,String> map=new HashMap<>();
        System.out.println(updateHouse.getParticulars());
        System.out.println(updateHouse.getHouse().getPicture());
        System.out.println(updateHouse.getUser());
        System.out.println(updateHouse.getHouseImg());

        //修改房屋下信息
      /*  boolean houseUpdate=houseService.updateHouse(updateHouse.getHouse());
        boolean particulasUpdate=particularsService.House_particularsUpdate(updateHouse.getParticulars());
        */


        return JSONObject.toJSONString(map);


    }
}
