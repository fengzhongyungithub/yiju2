package cn.beizhen.controller;

import cn.beizhen.entity.Code;
import cn.beizhen.service.CodeService;
import cn.beizhen.service.SendSms;
import com.alibaba.fastjson.JSON;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/**
 * 2020年5月18日22点16分
 * 孟希
 *发送验证码
 * @return
 */
@RestController
@CrossOrigin  //跨域支持
public class SmsController {

    @Resource
    private RedisTemplate<String, String> redisTemplate;
    @Resource
    private CodeService codeService;

    @Resource
    private SendSms sendSms;


    @GetMapping("sendSms")
    public void code(@RequestParam(value = "telephone") String telephone, HttpSession session) {

        //生成验证码
        String code = UUID.randomUUID().toString().substring(0, 4);
        HashMap<String, Object> map = new HashMap<>();
        map.put("code", code);
     /*   boolean send = sendSms.send(telephone, map);
       if (send){
           Code code2=new Code(telephone,code);
           int res=codeService.insertInfo(code2);
           System.out.println(code);

       }
*/
            Code code2 = new Code(telephone, code);
            int res = codeService.insertInfo(code2);
            System.out.println(code);

    }


    @GetMapping("doverification")
    public String verification(@RequestParam(value = "verification") String verification,
                               @RequestParam(value = "telephone") String telephone) {
        String code = codeService.getCode(telephone);
        System.out.println(verification);
        System.out.println(code);
        Map<String, String> map = new HashMap<>();
        if (code.equals(verification)) {
            map.put("data", "ok");
        } else {
            map.put("data", "fail");
        }
        System.out.println(map.values());
        return JSON.toJSONString(map);
    }

}
