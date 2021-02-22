package com.wjw.meal.Service;

import com.github.pagehelper.PageInfo;
import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.MenuType;
import com.wjw.meal.Pojo.Message;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface MenuService {

    PageInfo getMenusByMenuType(Integer typeId,Integer pn,Integer pageSize);

    PageInfo getAllMenusByPageNum(Integer pn, Integer pageSize);

    Menu getMenuByMenuName(String name);

    void addMenu(Menu menu);

    void updateMenu(Menu menu);

    void delMenuById(String id);

    void delmenubyids(List<String> ids);

    String importMenusByExcel(MultipartFile file);

    Message getAllMenuTypes();

    Menu getMenuById(String id);

    PageInfo getSpecialMenus(Integer pn, Integer pageSize);
}
