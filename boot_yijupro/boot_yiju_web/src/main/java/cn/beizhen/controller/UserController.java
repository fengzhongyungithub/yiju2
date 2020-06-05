package cn.beizhen.controller;


import cn.beizhen.entity.House;
import cn.beizhen.entity.User;
import cn.beizhen.service.CodeService;
import cn.beizhen.service.UserService;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * 修改  Mr.Wang
 */
@Controller
@RequestMapping("user")
public class UserController {

    private String errorMsg;
    @Resource
    private CodeService codeService;

    @Autowired
    private UserService userService;

    @RequestMapping("tologin")
    public String loginhtml(){
        return "login1";
    }
    /**
     * 2020年5月10日20:47:43
     * 尹天健
     * 登录

     * @param userpassword
     * @return
     */

    @RequestMapping("/login")
    public String login(@RequestParam(value = "phone") String phone,
                        @RequestParam(value = "userpassword") String userpassword,
                        Model model, HttpSession session){
        try {
            Map map = new HashMap();
            map.put("phone",phone);
            map.put("userpassowrd",userpassword);
            map.put("status",1);
            User user=userService.userOne(map);
            if(null != user){
                session.setAttribute("User",user);
                return "redirect:/house/showDifferentHouse";
            }else{
                this.errorMsg = "登录失败用户名或者密码错误";
                model.addAttribute("errorMsg",errorMsg);
                return "login";
            }
        }catch (Exception e){
            e.printStackTrace();
            this.errorMsg = "登录错误，请稍等后与再进行重试";
            model.addAttribute("errorMsg",errorMsg);
            return "login";
        }
    }

    /**
     * 2020年5月11日15:11:47
     * 尹天健
     * 映射到注册界面
     * @return
     */
    @RequestMapping("toregister")
    public String register_html(){
        return "login1";
    }

    /**
     * 2020年5月22日15:12:21
     * 孟希
     * 用户注册
     * @param user
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(@ModelAttribute User user, Model model,
                            @RequestParam(name = "usercode")String usercode){

        //先判断验证码是否正确
        String code = codeService.getCode(user.getPhone());
        if (code.equals(usercode)){
            //验证通过执行增加
            if (userService.Register(user)){
                return "redirect:/house/showDifferentHouse";
            }else {
                this.errorMsg = "注册失败请重新输入";
                model.addAttribute("errorMsg",errorMsg);
                return "login1";
            }
        }else {
            this.errorMsg = "验证码错误，重新输入";
            model.addAttribute("errorMsg",errorMsg);
            return "login1";
        }
    }

    /*
  服务器通知浏览器不要缓存
      response.setHeader("pragma","no-cache");
      response.setHeader("cache-control","no-cache");
      response.setHeader("expires","0");
*/

    @RequestMapping("/draw")
    @ResponseBody
    public void Draw(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //在内存中创建一个长80，宽30的图片，默认黑色背景
        //参数一：长
        //参数二：宽
        //参数三：颜色
        int width=80;
        int hight=30;
        BufferedImage image=new BufferedImage(width,hight,BufferedImage.TYPE_INT_RGB);
        //获取画笔
        Graphics g=image.getGraphics();
        //设置画笔的颜色为灰色
        g.setColor(Color.GRAY);
        //填充图片
        g.fillRect(0,0,width,hight);
        //产生4个随机数验证码，12Ey
        String checkCode=getCheckCode();
        //将验证码放入HttpSession中
        request.getSession().setAttribute("CHECKCODE_SERVER",checkCode);
        //设置画笔颜色为黄色
        g.setColor(Color.yellow);
        //设置字体的大小
        g.setFont(new Font("黑体", Font.BOLD,24));
        //向图片上写入验证码
        g.drawString(checkCode,15,25);
        //将内存中的图片输出到浏览器
        //参数一：图片对象
        //参数二：图片的格式，如PNG,JPG,GIF
        //参数三：图片输出到哪里去
        ImageIO.write(image,"PNG",response.getOutputStream());
    }

    /*
        产生随机的4位数
     */
    public String getCheckCode(){
        String base="0123456789ABCDEFGabcdefg";
        int size=base.length();
        Random r=new Random();
        StringBuffer str=new StringBuffer();
        for (int i=0;i<4;i++){
            //产生0到size-1的随机值
            int index=r.nextInt(size);
            //在base字符串中获取下标为index的字符
            char c=base.charAt(index);
            //将c放入到StringBuffer中去
            str.append(c);
        }
        return str.toString();
    }

    /**
     * 孟希
     * @param id
     * @param pageIndex
     * @param pageSize
     * @param model
     * @return
     */
    //根据登陆账号的饿id搜索收藏列表
    @RequestMapping("/searchCollection")
    public String searchCollection(@RequestParam(name = "id")String id, @RequestParam(name = "pageIndex",defaultValue="1") Integer pageIndex,
                                   @RequestParam(name = "pageSize",defaultValue="4")Integer pageSize, Model model){
        //根据登陆账号的饿id搜索收藏列表
        Integer tendId=id!=null?Integer.parseInt(id):0 ;
        PageHelper.startPage(pageIndex,pageSize);
        List<House> list=userService.getPage(tendId);
        PageInfo<House> pageInfo=new PageInfo<House>(list,pageSize);
        model.addAttribute("houses",pageInfo.getList());
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("id",tendId);
        return "myfavorite";
    }

    /**
     * 2020年5月18日15:53:54
     * 尹天健
     * 退出
     * @return
     */
    @RequestMapping("/loginout")
    public String loginout(Model model,HttpSession session){
        session.removeAttribute("User");
        return "redirect:/user/tologin";
    }
    /**
     * 2020年5月25日17点00分
     * 孟希
     * 修改用户信息
     * @return
     */

  /*  @RequestMapping("/updatename")
    @ResponseBody

    public String updatename(@ModelAttribute("user") User user,HttpSession session,Model model){
        //获取用户id
       *//*User user1=(User)session.getAttribute("User");
       int userid=user1.getUserid();*//*

        Map<String,String> jsonmap=new HashMap<>();
        System.out.println("user-"+user.getUsername());
        user.setUserid(1);
       //执行更新操作
       if ( userService.updateUser(user)){
           jsonmap.put("result","ok");

       }else {
           jsonmap.put("result","fail");
       }
        System.out.println(jsonmap);
       return JSONArray.toJSONString(jsonmap);

    }*/

    @PostMapping("/updateByname")
    @ResponseBody
    public String updatename(@RequestParam(required = false)String updateusername,
                             @RequestParam(required = false)String newokuserpassword,
                             @RequestParam(required = false)String newsmsphone,
                             @RequestParam(required = false)String userpassword,
                             HttpSession session,Model model){
        //获取用户id
       /*User user1=(User)session.getAttribute("User");
       int userid=user1.getUserid();*/
        Map<String,String> jsonmap=new HashMap<>();
        int userid=1;
        System.out.println("n"+updateusername);
        User user=new User();
        if (updateusername!=null && updateusername!=""){
            user.setUsername(updateusername);
        }

        if (newokuserpassword!=null && newokuserpassword!=""){
            //先检测原密码是否正确
            String oldpass=userService.getPass(userid);
            System.out.println("od"+oldpass);
            if (oldpass.equals(userpassword)){
                user.setUserpassowrd(newokuserpassword);

            }else {
                jsonmap.put("result","passerro");
            }

        }
        if (newsmsphone!=null && newsmsphone!=
                ""){
            user.setPhone(newsmsphone);
        }

        System.out.println("user-"+user.getUsername());
        user.setUserid(userid);
        //执行更新操作
        if ( userService.updateUser(user)){
            jsonmap.put("result","ok");
        }else {
            jsonmap.put("result","fail");
        }
        System.out.println(jsonmap);
        return JSONArray.toJSONString(jsonmap);
    }
    /**
     * 2020年5月22日17点00分
     * 孟希
     * 判断注册时输入的用户名是否存在
     * @return
     */
    @RequestMapping("/checkUerName")
    @ResponseBody
    public String checkUerName(@RequestParam(name = "registerusername")String registerusername,
                            Model model){
        Map map = new HashMap();
        Map<String,String> jsonmap=new HashMap<>();
        map.put("username",registerusername);
        User user=userService.userOne(map);
         System.out.println();
        if (null!=user){
            //用户名已经存在
            model.addAttribute("error","用户名已存在");
            jsonmap.put("result","fail");
        }
        System.out.println(jsonmap);
        return JSONArray.toJSONString(jsonmap);
    }

}
