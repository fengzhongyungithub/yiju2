package cn.beizhen.service;

import cn.beizhen.entity.Admin;

public interface AdminService {
    public Admin login(String code, String password);
}
