package cn.beizhen.controller;

import cn.beizhen.entity.House;
import cn.beizhen.entity.House_particulars;
import cn.beizhen.service.CategoryService;
import cn.beizhen.service.HouseService;
import cn.beizhen.service.House_particularsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 房屋表
 * 
 * @author object
 * 
 */
@Controller
@RequestMapping("/house")
public class HouseController {
    private String errorMsg;
    @Autowired
    private HouseService houseService;

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private House_particularsService house_particularsService;

    @RequestMapping("route_list.html")
    public String routelisthtml(){
        return "route_list";
    }

    @RequestMapping("toAddHouse")
    public String addHousehtml(){
        return "release";
    }

    /**
     * 发布房源
     * @param price 价格
     * @param house_area_code 房屋地区编码 省份
     * @param address 详细地址 如伊河路伏牛路101号 1号楼
     * @param floot 楼层
     * @param house_city_code 城市编码
     * @param area 小区
     * @param housesize 房子大小
    //* @param picture 图片路径
     * @param renttype 租住类型 整租、合租
    //* @param house_createYear 房屋建立年份
     * @param houseType 房屋户型 一室一厅等
    //* @param categoryType 房屋分类
     * @param housefczimg 用户房产证照片
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("/addHouse")
    public String addHouse(@RequestParam(value = "price") Double price,
                           @RequestParam(value = "house_area_code") String house_area_code,
                           @RequestParam(value = "address") String address,
                           @RequestParam(value = "floot") Integer floot,
                           @RequestParam(value = "house_city_code") String house_city_code,
                           @RequestParam(value = "area") String area,
                           @RequestParam(value = "housesize") Double housesize,
                           //@RequestParam(value = "picture") String picture,
                           @RequestParam(value = "renttype") Integer renttype,
                           //@RequestParam(value = "house_createYear") Date house_createYear,
                           @RequestParam(value = "houseType") String houseType,
                           //@RequestParam(value = "categoryType") Integer categoryType,
                           @RequestParam(value = "housefczimg") String housefczimg,
                           Model model, HttpSession session){
        try {
            Map map = new HashMap();
            map.put("price",price);
            map.put("house_area_code",1);
            map.put("address",address);
            map.put("floot",floot);
            map.put("house_city_code",1);
            map.put("area",area);
            map.put("housesize",housesize);
            map.put("picture",1);
            map.put("renttype",renttype);
            map.put("house_createYear",1);
            map.put("houseType",houseType);
            map.put("categoryType",1);
            map.put("housefczimg",1);
            Integer r=houseService.addHouse(map);
            if(r>0){
                return "release";
            }else{
                this.errorMsg = "房源发布失败";
                model.addAttribute("errorMsg",errorMsg);
                return "release";
            }
        }catch (Exception e){
            e.printStackTrace();
            this.errorMsg = "房源发布错误，请稍等后与再进行重试";
            model.addAttribute("errorMsg",errorMsg);
            return "release";
        }
    }



    /**
     * 尹天健
     * 2020年5月9日14:04:16
     * 查看房屋详细信息
     * @return
     */
    @RequestMapping("/route_detail")
    public String route_detail(@RequestParam(value = "id")int id,Model model){
        Map map =new HashMap();
        map.put("id",id);
        //房屋信息
        House houseinfo = houseService.houseOne(map);
        String img = houseinfo.getPicture();

        model.addAttribute("Houseinfo",houseinfo);
        //房屋详情
        map.clear();
        map.put("house_id",1);
        House_particulars house_particulars =house_particularsService.House_particularsOne(map);
        model.addAttribute("house_particulars",house_particulars);
        return "route_detail";
    }



    @RequestMapping("/showDifferentHouse")
    public ModelAndView ShowDifferentHouse() {
        List<House> houses = houseService.selectHouseByState();
        List<House> houseList = houseService.findAll(6);
        List<House> rnameList = houseService.findAllByRname();
        List<House> collectionCountList = houseService.findByCollectionCount();
        List<House> housepushList = houseService.findByHousepush();

//        List<Category> categories = categoryService.findALl();
        ModelAndView mav = new ModelAndView();
        mav.addObject("houses", houses);
        mav.addObject("houseList", houseList);
        mav.addObject("rnameList", rnameList);
        mav.addObject("collectionCountList", collectionCountList);
        mav.addObject("housepushList", housepushList);
//        mav.addObject("categories", categories);
        System.out.println("houses" + houses);
        System.out.println("houseList:" + houseList);
        System.out.println("rnameList：" + rnameList);
        mav.setViewName("index");
        return mav;
    }

    /**
     * 孟希
     * 2020年11点41分
     * 首页搜索想要的房屋类型
     * @return
     */

    @RequestMapping("/findByCondition")
    public String findByCondition(String condition,Model model,
                                  @RequestParam(name = "pageIndex",defaultValue="0") Integer pageIndex,
                                  @RequestParam(name = "pageSize",defaultValue="4")Integer pageSize){
        System.out.println("condition:"+condition);
        PageHelper.startPage(pageIndex,pageSize);
        List<House> list=houseService.findByCondition(condition);
        System.out.println("-------------------"+list.size());
        //分页展示
        PageInfo<House> pageInfo=new PageInfo<>(list,pageSize);
        model.addAttribute("houseByCondition",pageInfo.getList());
        model.addAttribute("condition",condition);
        model.addAttribute("ByConditionPage",pageInfo);
        System.out.println("pageInfo:"+pageInfo);
        return "route_list";
    }

    /**
     * 尹天健
     * 2020年5月17日11:54:40
     * 按照首页查出来的东西来进行分诶查询，比如查询二手房
     * @return
     */
    @RequestMapping("/categoryType")
    public String house_categoryType(@RequestParam("id") int categoryType,
                                     @RequestParam(name = "pageIndex",defaultValue="0") Integer pageIndex,
                                     @RequestParam(name = "pageSize",defaultValue="4")Integer pageSize,
                                     Model model){
        Map map = new HashMap();
        map.put("categoryType",categoryType);
        map.put("currentPage",pageIndex);
        map.put("pageSize",pageSize);
        PageHelper.startPage(pageIndex,pageSize);
        List<House> list=houseService.houseList(map);
        System.out.println("-------------------"+list.size());
        //分页展示
        PageInfo<House> pageInfo=new PageInfo<>(list,pageSize);
        model.addAttribute("house_categoryType",pageInfo.getList());
        model.addAttribute("categoryType",categoryType);
        model.addAttribute("ByConditionPage",pageInfo);
        System.out.println("pageInfo:"+pageInfo);
        return "select_list";
    }
}
