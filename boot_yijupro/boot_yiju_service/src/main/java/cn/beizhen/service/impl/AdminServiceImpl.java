package cn.beizhen.service.impl;

import cn.beizhen.entity.Admin;
import cn.beizhen.mapper.AdminMapper;
import cn.beizhen.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    @Override
    public Admin login(String code, String password) {
        return adminMapper.login(code, password);
    }
}
