package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.MenuMapper;
import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.MenuExample;
import com.wjw.meal.Service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;


    @Override
    public List<Menu> getMenusByMenuType(Integer typeId) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMtypeEqualTo(typeId);
        return menuMapper.selectByExample(example);
    }

    @Override
    public List<Menu> getAllMenus() {
        return menuMapper.selectByExample(null);
    }

    @Override
    public void addMenu(Menu menu) {
        menu.setMid(UUID.randomUUID().toString());
        menuMapper.insert(menu);
    }

    @Override
    public void updateMenu(Menu menu) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMidEqualTo(menu.getMid());
        menuMapper.updateByExampleSelective(menu,example);
    }

    @Override
    public void delMenuById(String id) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMidEqualTo(id);
        menuMapper.deleteByPrimaryKey(id);
    }

    //通过名字删
    @Override
    public void delmenubyids(List<String> ids) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMidIn(ids);
        menuMapper.deleteByExample(example);
    }
}
