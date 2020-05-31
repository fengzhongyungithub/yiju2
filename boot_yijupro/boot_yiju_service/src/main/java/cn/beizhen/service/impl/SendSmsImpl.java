package cn.beizhen.service.impl;

import cn.beizhen.service.SendSms;
import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class SendSmsImpl implements SendSms {

    /**
     * 2020年5月18日22点16分
     * 孟希
     *发送验证码
     * @return
     */
    @Override
    public boolean send(String phoneNum, Map<String,Object>map) {
        //链接阿里云
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4GDJJ4GRqY3uxAR62rVV", "PKe9sj8UEE9SOvwh5IByrqy564laIF");
        IAcsClient client = new DefaultAcsClient(profile);
        //构建请求
        CommonRequest request = new CommonRequest();
        request.setSysMethod(MethodType.POST);
        request.setSysDomain("dysmsapi.aliyuncs.com");
        request.setSysVersion("2017-05-25");
        request.setSysAction("SendSms");
        //自定义的参数（手机号，验证码，签名，模板）
        request.putQueryParameter("PhoneNumbers", phoneNum);
        request.putQueryParameter("SignName", "北臻");
        request.putQueryParameter("TemplateCode", "SMS_190272332");
        //构建一个短信的验证码
        request.putQueryParameter("TemplateParam", JSONObject.toJSONString(map));
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
            return response.getHttpResponse().isSuccess();
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return false;
    }


}
