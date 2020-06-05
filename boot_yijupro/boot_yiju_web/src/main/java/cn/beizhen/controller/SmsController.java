package cn.beizhen.controller;

import cn.beizhen.entity.Code;
import cn.beizhen.service.CodeService;
import cn.beizhen.service.SendSms;
import com.alibaba.fastjson.JSONArray;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
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
    public void code(@RequestParam(value = "telphone") String telephone) {
        //生成验证码
        String code = UUID.randomUUID().toString().substring(0, 4);
        HashMap<String, Object> map = new HashMap<>();
     /*   boolean send = sendSms.send(telephone, map);
       if (send){
           Code code2=new Code(telephone,code);
           int res=codeService.insertInfo(code2);
           System.out.println(code);

       }
*/
        System.out.println("tel"+telephone);
        Code code2 = new Code(telephone, code);
        int res = codeService.insertInfo(code2);
        System.out.println(code+"-"+res);

    }
    @GetMapping("doverifi")
    @ResponseBody
    public String verificat(@RequestParam(value = "telphone") String phone,
                            @RequestParam(value = "verification") String verification
    ){
        Map<String,String> jsonmap=new HashMap<>();
        System.out.println("tt"+phone);
        String code = codeService.getCode(phone);
        if (code.equals(verification)) {
            jsonmap.put("result","ok");
        } else {
            jsonmap.put("result","fail");
        }
        System.out.println("jj"+jsonmap);
        return JSONArray.toJSONString(jsonmap);
    }


    @GetMapping("doverification")
    public String verification(@RequestParam(value = "telphone") String phone,
                               @RequestParam(value = "verification") String verification,
                               Model model) {
        String code = codeService.getCode(phone);
        if (code.equals(verification)) {
            return "redirect:/house/showDifferentHouse";
        } else {
            model.addAttribute("message", "验证码错误");
        }
        return "login1";
    }

}
