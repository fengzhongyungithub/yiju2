package cn.beizhen.controller;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class BaseController {

    /**
     * 将传入的对象序列化为json,返回客户端
     * @param object
     * @param response
     */
    public void writeValue(Object object, HttpServletResponse response) {
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
        } catch (IOException e) {

            e.printStackTrace();
        }
        response.setContentType("application/json;charset=utf-8");
        writer.write(JSONObject.toJSONString(object));
        writer.flush();
        writer.close();
    }

    /**
     * 将传入对象序列化为对象返回
     * @param object
     * @param response
     * @return
     */
    public String writeValueAsString(Object object) {
        return JSONObject.toJSONString(object);

    }

}
