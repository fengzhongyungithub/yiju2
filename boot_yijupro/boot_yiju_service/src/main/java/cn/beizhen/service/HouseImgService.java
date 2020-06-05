package cn.beizhen.service;

import cn.beizhen.entity.HouseImg;

import java.util.List;

/**
 * 房屋图片表
 * 2020年5月9日10:25:04
 */
public interface HouseImgService {
    /**
     * 2020年5月12日21:17:46
     * 尹天健
     * 查询houseimg表里面的房屋图片，详情页面用的
     * @param
     * @return
     */
    public List<HouseImg> houseImgList(int houseId);
}
