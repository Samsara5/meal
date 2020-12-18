package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Menu;

import java.util.List;

public interface MenuService {

    public List<Menu> getMenusByMenuType(Integer typeId);

    public List<Menu> getAllMenus();

    public void addMenu(Menu menu);

    public void updateMenu(Menu menu);

    public void delMenuById(String id);

    public void delmenubyids(List<String> ids);
}
