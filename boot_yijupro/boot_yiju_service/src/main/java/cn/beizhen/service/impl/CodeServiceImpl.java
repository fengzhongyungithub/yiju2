package cn.beizhen.service.impl;

import cn.beizhen.entity.Code;
import cn.beizhen.mapper.CodeMapper;
import cn.beizhen.service.CodeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CodeServiceImpl implements CodeService {

    /**
     * 2020年5月18日22点16分
     * 孟希
     * code的一系列操作
     * @return
     */
    @Resource
    private CodeMapper codeMapper;


    @Override
    public int insertInfo(Code code) {
        return codeMapper.insertInfo(code);
    }

    @Override
    public String getCode(String phone) {
        return codeMapper.getCode(phone);
    }

    @Override
    public int deletCode(String code) {
        return codeMapper.deletCode(code);

    }
}
