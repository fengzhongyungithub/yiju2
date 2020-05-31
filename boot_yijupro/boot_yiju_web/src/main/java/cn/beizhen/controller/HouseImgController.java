package cn.beizhen.controller;

import cn.beizhen.entity.HouseImg;
import cn.beizhen.service.HouseImgService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 房屋图片表
 * 2020年5月9日10:25:04
 */
@Controller
public class HouseImgController {
    @Autowired
    private HouseImgService houseImgService;

    /**
     * 2020年5月12日21:17:46
     *尹天健
     * 查询houseimg表里面的房屋图片，详情页面用的
     * @return
     */
    @RequestMapping("/houseImgList")
    @ResponseBody
    public Object houseImgList(@RequestParam(value = "houseId")int houseId){
        List<HouseImg> houseImg = houseImgService.houseImgList(houseId);
        return JSON.toJSONString(houseImg);
    }
}
