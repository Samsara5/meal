package com.wjw.meal.Service.impl;

import com.github.pagehelper.PageHelper;
import com.wjw.meal.Dao.MenuMapper;
import com.wjw.meal.Dao.MenuTypeMapper;
import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.*;
import com.wjw.meal.Service.MenuService;
import com.wjw.meal.Service.StoreService;
import com.wjw.meal.Utils.ExcelUtils;
import com.wjw.meal.Utils.ImageGender;
import com.wjw.meal.Utils.NomalUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;


import java.util.*;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    MenuTypeMapper menuTypeMapper;

    @Autowired
    StoreMapper storeMapper;

    @Autowired
    StoreService storeService;

    @Override
    public List<Menu> getMenusByMenuType(Integer typeId) {
        MenuTypeExample type = new MenuTypeExample();
        type.createCriteria().andMlevelEqualTo(2);
        type.createCriteria().andMpidEqualTo(typeId);
        List<MenuType> submenus = menuTypeMapper.selectByExample(type);
        List<Integer> subsubmenus = new ArrayList<>();
        for (MenuType m : submenus) {
            subsubmenus.add(m.getMtid());
        }
        type.clear();
        type.createCriteria().andMlevelEqualTo(3);
        type.createCriteria().andMpidIn(subsubmenus);
        List<MenuType> items = menuTypeMapper.selectByExample(type);
        List<String> itemsid = new ArrayList<>();
        for (MenuType m : items) {
            itemsid.add(String.valueOf(m.getMtid()));
        }
        MenuExample example = new MenuExample();
        example.createCriteria().andMidIn(itemsid);
        return menuMapper.selectByExample(example);
    }

    @Override
    public List<Menu> getAllMenusByPageNum(Integer pn,Integer pagesize) {
        List<Menu> res = new ArrayList<>();
        PageHelper.startPage(pn, pagesize);
        MenuExample menuExample = new MenuExample();
        menuExample.setOrderByClause("mtype ASC");
        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        for (Menu m: menuList) {
            MenuTypeExample example = new MenuTypeExample();
            example.createCriteria().andMtidEqualTo(NomalUtils.StringToInt(m.getMtypeid()));
            m.setMtypeid(menuTypeMapper.selectByExample(example).get(0).getMtname());
            m.setMpirce("￥\t"+m.getMpirce());
            res.add(m);
        }
        return res;
    }

    @Override
    public Menu getMenuByMenuName(String name) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMnameEqualTo(name);
        menuMapper.selectByExample(example);
        return menuMapper.selectByExample(example).get(0);
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
        menuMapper.updateByExampleSelective(menu, example);
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
        ExcelUtils sheet = new ExcelUtils(file, "menu");
        Map<String, List<String>> sheetinfo = sheet.readExcelData();
        for (int i = 1; i < sheetinfo.size(); i++) {
            List<String> cloumdata = sheetinfo.get(String.valueOf(i));
            Menu menu = new Menu();
            //生成menu的Id
            menu.setMid(UUID.randomUUID().toString());
            //菜名
            menu.setMname(cloumdata.get(0));
            //仓储材料Id
            Store store = storeService.getStoreByName(cloumdata.get(1));
            Assert.isTrue(store != null, "未找到食材-->" + cloumdata.get(1));
            menu.setMmateria(store.getStroeid());
            //剩余份数
            menu.setMnumber(store.getStroenumber());
            //价格
            menu.setMpirce(cloumdata.get(2));
            //是否特色菜
            menu.setMischara(cloumdata.get(4).equals("1") ? "true" : "false");
            //所属种类
            MenuTypeExample menuTypeExample = new MenuTypeExample();
            menuTypeExample.createCriteria().andMtnameEqualTo(cloumdata.get(5));
            MenuType menuType = menuTypeMapper.selectByExample(menuTypeExample).get(0);
            menu.setMtypeid(String.valueOf(menuType.getMtid()));
            menu.setMtypename(menuType.getMtname());
            //生成图片并将图片url存入数据库
            try {
                ImageGender.generateImg(menu.getMname(), menu.getMid());
            } catch (Exception e) {
                e.printStackTrace();
                Assert.isTrue(true, "生成图片错误!");
            }
            menu.setMimageurl("D://menuImage/" + menu.getMid() + ".jpg");
            addMenu(menu);
        }
    }
}
