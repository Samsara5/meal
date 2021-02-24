package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wjw.meal.Dao.MenuMapper;
import com.wjw.meal.Dao.MenuTypeMapper;
import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.*;
import com.wjw.meal.Service.MenuService;
import com.wjw.meal.Service.StoreService;
import com.wjw.meal.Utils.ExcelUtils;
import com.wjw.meal.Utils.ImageGender;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;


import java.util.*;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/11 15:03
 * @Description MenuServiceImpl
 */

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
    public PageInfo getMenusByMenuType(Integer typeId,Integer pn,Integer pageSize) {
        MenuExample example = new MenuExample();
        example.createCriteria().andMtypeidEqualTo(String.valueOf(typeId));
        PageHelper.startPage(pn, pageSize);
        List<Menu> menus = menuMapper.selectByExample(example);
        PageInfo menusPage = new PageInfo(menus,pageSize);
        return menusPage;
    }

    @Override
    public PageInfo getAllMenusByPageNum(Integer pn, Integer pageSize) {
        MenuExample menuExample = new MenuExample();
        menuExample.setOrderByClause("mtypeid ASC");
        PageHelper.startPage(pn, pageSize);
        List<Menu> menus = menuMapper.selectByExample(menuExample);
        PageInfo menusPage = new PageInfo(menus,pageSize);
        return menusPage;
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
    public String importMenusByExcel(MultipartFile file) {
        ExcelUtils sheet;
        Map<String, List<String>> sheetinfo=null;
        try {
            sheet = new ExcelUtils(file, "menu");
            sheetinfo = sheet.readExcelData();
        }catch (Exception e){
            e.printStackTrace();
            return sheetinfo.get("erro").get(0);
        }
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
            menu.setMimageurl(menu.getMid() + ".jpg");
            addMenu(menu);
        }
        return "导入成功";
    }

    @Override
    public Message getAllMenuTypes() {
        List<JSONObject> MenuTypes = new ArrayList<>();
        MenuTypeExample example =new MenuTypeExample();
        example.createCriteria().andMpidEqualTo(0);
        List<MenuType> mainMenuTypes = menuTypeMapper.selectByExample(example);
        for (MenuType ptype : mainMenuTypes) {
            example.clear();
            example.createCriteria().andMpidEqualTo(ptype.getMtid());
            List<MenuType> childrenlist = menuTypeMapper.selectByExample(example);
            JSONObject object = (JSONObject) JSON.toJSON(ptype);
            object.put("children", childrenlist);
            MenuTypes.add(object);
        }
        return Message.success().add("MenuTypes", MenuTypes);
    }

    @Override
    public Menu getMenuById(String id) {
        return menuMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo getSpecialMenus(Integer pn, Integer pageSize) {
        MenuExample example =  new MenuExample();
        example.setOrderByClause("mtypeid ASC");
        example.createCriteria().andMischaraEqualTo("true");
        PageHelper.startPage(pn,pageSize);
        List<Menu> menus = menuMapper.selectByExample(example);
        PageInfo menusPage = new PageInfo(menus,pageSize);
        return menusPage;
    }
}
