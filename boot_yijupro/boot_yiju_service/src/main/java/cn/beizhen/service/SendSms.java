package cn.beizhen.service;

import java.util.Map;

public interface SendSms {
    /**
     * 2020年5月18日22点16分
     * 孟希
     * 手机验证码
     * @return
     */
    boolean send(String phoneNum, Map<String,Object> map);
}
