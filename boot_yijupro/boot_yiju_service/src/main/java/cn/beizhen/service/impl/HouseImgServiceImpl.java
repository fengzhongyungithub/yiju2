package cn.beizhen.service.impl;

import cn.beizhen.entity.HouseImg;
import cn.beizhen.mapper.HouseImgMapper;
import cn.beizhen.service.HouseImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 房屋图片表
 * 2020年5月9日10:25:04
 */
@Service
public class HouseImgServiceImpl implements HouseImgService {
    @Autowired
    private HouseImgMapper houseImgMapper;

    /**
     * 2020年5月12日21:17:46
     * 尹天健
     * 查询houseimg表里面的房屋图片，详情页面用的
     * @param houseId
     * @return
     */
    public List<HouseImg> houseImgList(int houseId){
        return houseImgMapper.houseImgList(houseId);
    }
}
