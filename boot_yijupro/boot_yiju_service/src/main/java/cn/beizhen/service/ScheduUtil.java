package cn.beizhen.service;

import cn.beizhen.entity.Code;
import cn.beizhen.mapper.CodeMapper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class ScheduUtil  {
    /**
     * 2020年5月18日22点16分
     * 孟希
     *定时处理
     * @return
     */
    @Resource
    private CodeMapper codeMapper;



    @Scheduled(cron = "0 0/2 * * * ?")
    public void deletCode() {

        List<Code> list=codeMapper.getAll();
        for (Code code:list) {
             String phone=code.getPhone();
             if (null!=phone){
                 codeMapper.deletCode(phone);
                 System.out.println("del");
             }
        }

    }


}
