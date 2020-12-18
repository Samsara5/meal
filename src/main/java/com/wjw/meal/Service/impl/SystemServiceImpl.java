package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.NavigationMapper;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Pojo.Navigation;
import com.wjw.meal.Pojo.NavigationExample;
import com.wjw.meal.Service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SystemServiceImpl implements SystemService {

    @Autowired
    NavigationMapper navigationMapper;

    @Override
    public Message getNavigation() {
        List<JSONObject> navigationres = new ArrayList<>();
        NavigationExample example = new NavigationExample();
        example.createCriteria().andPidEqualTo(0);
        List<Navigation> mainnavigation = navigationMapper.selectByExample(example);
        for (Navigation pnav:mainnavigation){
            example.clear();
            example.createCriteria().andPidEqualTo(pnav.getId());
            List<Navigation> childrenlist = navigationMapper.selectByExample(example);
            JSONObject object = (JSONObject) JSON.toJSON(pnav);
            object.put("children",childrenlist);
            navigationres.add(object);
        }
        return Message.success().add("navigation",navigationres);
    }
}
