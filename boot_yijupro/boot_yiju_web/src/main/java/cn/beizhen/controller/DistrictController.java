package cn.beizhen.controller;

import cn.beizhen.service.DistrictService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.*;

@Controller
public class DistrictController {
    @Resource
    public DistrictService districtService;
    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 搜索城市
     * @return
     */
    @RequestMapping("/search")
    public String city(Model model){
        /*Map<String,String> map=districtService.getAll();
        System.out.println(map.keySet()+"--"+map.values());
        model.addAttribute("key",map);
        System.out.println( map.values());*/

        Map<String,String> map=districtService.getAll();
        Map<String,String> sortedMap = new LinkedHashMap<>();
        List<String> list = new ArrayList<>();
        Iterator<String> item = map.keySet().iterator();
        while(item.hasNext()){
            list.add(item.next());
        }
        Collections.sort(list);
        Iterator<String> item2 = list.iterator();
        while(item2.hasNext()){
            String key = item2.next();
            sortedMap.put(key,map.get(key));
        }
        System.out.println(sortedMap.keySet());
        model.addAttribute("key",sortedMap);

        return "city";
    }

    /**
     * 2020年5月9日14:31:30
     * 孟希
     * 通过搜索内容找到城市
     * 模糊查询
     * @return
     */

    @RequestMapping("findByInput")
    public String searchName(@RequestParam(name = "sug") String sug,Model model){
        System.out.println(sug);
        int type=2;
        String place=districtService.findByInput(type,sug);
       if (null==place){
           type=1;
           place=districtService.findByInput(type,sug);
       }
        System.out.println(place);
        model.addAttribute("place",place);
        return "index";
    }

}
