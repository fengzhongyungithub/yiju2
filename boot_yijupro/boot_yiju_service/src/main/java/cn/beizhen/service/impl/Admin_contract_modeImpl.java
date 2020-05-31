package cn.beizhen.service.impl;

import cn.beizhen.mapper.Admin_contract_modeMapper;
import cn.beizhen.service.Admin_contract_modeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 2020年5月21日23:16:35
 * 合同范本表
 */
@Service
public class Admin_contract_modeImpl implements Admin_contract_modeService {

    @Autowired
    private Admin_contract_modeMapper admin_contract_modeMapper;
}
