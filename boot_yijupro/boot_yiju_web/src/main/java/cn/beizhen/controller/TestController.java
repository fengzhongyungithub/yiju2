package cn.beizhen.controller;

import cn.beizhen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@Controller
@RequestMapping
public class TestController {
    @Autowired
    private UserService userService;
    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/test")
    public String index() {
        return "User_release";
    }

    @RequestMapping("/getPage")
    public String getPage() {
        return "login1";
    }

    @GetMapping("/contact")
    public String natice(HttpServletRequest request, HttpServletResponse response) {
        //获取项目根路径
        /*   String path=request.getSession().getServletContext().getRealPath("file")+"\\"+"contract.pdf";*/
        byte[] data = null;
        try {

         /*   Resource resource = new ClassPathResource("classpath:static/file/contract.pdf");
            File file = resource.getFile();*/
            String path="D:\\"+"contract.pdf";
            File file =new File(path);
            System.out.println(file.getAbsolutePath());
            FileInputStream input = new FileInputStream(file);
            data = new byte[input.available()];
            input.read(data);
            response.getOutputStream().write(data);
            input.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "http://localhost:8080/pdf/web/viewer.html?file=http://localhost:8080/preview?fileName=contract.pdf";

      /*  String path=request.getSession().getServletContext().getRealPath("file");
        System.out.println(path);
        File file=new File(path);
        System.out.println("name"+file.getName());
        return "http://localhost:8080/file/"+file.getName();*/

    }

    /**
     * 获取页面展示合同  孟希
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public void pdfStreamHandler( HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("fileName");
      /*  File file = new File("D:\\contract.pdf");*/


           /*Resource resource = new ClassPathResource("classpath:static/file/contract.pdf");*/
            File file = ResourceUtils.getFile("classpath:/static/file/contract.pdf");
        if (file.exists()){
            byte[] data = null;
            try {
                FileInputStream input = new FileInputStream(file);
                data = new byte[input.available()];
                input.read(data);
                response.getOutputStream().write(data);
                input.close();
            } catch (Exception e) {
            }

        }else{
            return;
        }
    }
}