package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.MenuMapper;
import com.wjw.meal.Dao.MenuTypeMapper;
import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.MenuExample;
import com.wjw.meal.Pojo.MenuType;
import com.wjw.meal.Pojo.MenuTypeExample;
import com.wjw.meal.Service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    MenuTypeMapper menuTypeMapper;

    @Override
    public List<Menu> getMenusByMenuType(Integer typeId) {
        MenuTypeExample type = new MenuTypeExample();
        type.createCriteria().andMlevelEqualTo(2);
        type.createCriteria().andMpidEqualTo(typeId);
        List<MenuType> submenus = menuTypeMapper.selectByExample(type);
        List<Integer> subsubmenus = new ArrayList<>();
        for (MenuType m: submenus) {
            subsubmenus.add(m.getMtid());
        }
        type.clear();
        type.createCriteria().andMlevelEqualTo(3);
        type.createCriteria().andMpidIn(subsubmenus);
        List<MenuType> items = menuTypeMapper.selectByExample(type);
        List<Integer> itemsid = new ArrayList<>();
        for (MenuType m:items){
            itemsid.add(m.getMtid());
        }
        MenuExample example = new MenuExample();
        example.createCriteria().andMtypeIn(itemsid);
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

    @Override
    public void importMenusByExcel(MultipartFile file) {

    }
}
