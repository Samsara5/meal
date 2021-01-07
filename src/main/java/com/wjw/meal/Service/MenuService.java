package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Menu;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface MenuService {

    List<Menu> getMenusByMenuType(Integer typeId);

    List<Menu> getAllMenusByPageNum(Integer pn, Integer pageSize);

    Menu getMenuByMenuName(String name);

    void addMenu(Menu menu);

    void updateMenu(Menu menu);

    void delMenuById(String id);

    void delmenubyids(List<String> ids);

    void importMenusByExcel(MultipartFile file);
}
