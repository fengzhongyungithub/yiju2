package cn.beizhen.service;

import java.util.Map;

public interface DistrictService {
    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 获取城市
     * @return
     */
    public Map<String,String> getAll();

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 通过输入栏的内容获取城市
     * @return
     */
    public String findByInput(int type,String place);

}
