package cn.beizhen.service.impl;

import cn.beizhen.mapper.DistrictMapper;
import cn.beizhen.service.DistrictService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class DistrictServiceImpl implements DistrictService {

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取城市
     * @return
     */
    @Resource
    public DistrictMapper districtMapper;
    @Override
    public Map<String, String> getAll() {
        return districtMapper.getAll();
    }

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 通过输入栏的内容获取城市
     * @return
     */
    @Override
    public String findByInput(int type,String place){
        return districtMapper.findByInput(type,place);
    }

}
