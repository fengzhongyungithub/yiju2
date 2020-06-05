package cn.beizhen.service;

import cn.beizhen.entity.Code;

public interface CodeService {
    /**
     * 2020年5月18日22点16分
     * 孟希
     * code的一系列操作
     * @return
     */
    int insertInfo(Code code);
    String getCode(String phone);
    int deletCode(String code);

}
