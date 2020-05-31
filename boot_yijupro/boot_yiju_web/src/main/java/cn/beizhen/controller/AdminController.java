package cn.beizhen.controller;

import cn.beizhen.entity.Admin;
import cn.beizhen.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/login")
    public String login(Model model, String code, String password) {

        Admin admin = adminService.login(code, password);
        if (null == admin) {
            return "after-login";
        }
        model.addAttribute("admin", admin);
        return "after-main";
    }


}
