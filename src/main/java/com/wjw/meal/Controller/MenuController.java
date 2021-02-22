package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.MenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/7 11:28
 * @Description MenuController
 */

@RestController
@Api(tags = "菜单管理")
@RequestMapping(value = "/menu")
public class MenuController {

    @Autowired
    MenuService menuService;

    @ApiOperation(value = "新增菜单项")
    @PostMapping("/addmenu")
    public Message addmenu(@RequestBody Menu menu) {
        menuService.addMenu(menu);
        return Message.success();
    }

    @ApiOperation(value = "修改菜单项")
    @PostMapping("/updatemenu")
    public Message updatemenu(@RequestBody Menu menu) {
        menuService.updateMenu(menu);
        return Message.success();
    }

    @ApiOperation(value = "通过id删除单个菜单")
    @PostMapping("/deletemenu")
    public Message delmenubyid(@RequestBody Map<String, String> id) {
        menuService.delMenuById(id.get("id"));
        return Message.success();
    }

    @ApiOperation(value = "通过id批量删除")
    @PostMapping("/autodelmenus")
    public Message delmenubyids(@RequestBody List<String> ids) {
        menuService.delmenubyids(ids);
        return Message.success();
    }

    @ApiOperation(value = "通过typeId查询菜单")
    @GetMapping("/getMenusByType")
    public Message getMenusByType(@RequestParam("typeId")Integer typeId,@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "size", defaultValue = "10") Integer pageSize) {
        return Message.success()
                .add("menus", menuService.getMenusByMenuType(
                        Integer.valueOf(typeId),
                        Integer.valueOf(pn),
                        Integer.valueOf(pageSize)));
    }

    @ApiOperation(value ="查询特色菜")
    @GetMapping("/getSpecialMenus")
    public  Message getSpecialMenus(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "size", defaultValue = "10") Integer pageSize){
        return Message.success()
                .add("menus", menuService.getSpecialMenus(
                        Integer.valueOf(pn),
                        Integer.valueOf(pageSize)));
    }

    @ApiOperation(value = "通过Id查询菜单")
    @GetMapping("/getMenuById")
    public Message getMenuById(@RequestParam String id) {
        return Message.success().add("menu", menuService.getMenuById(id));
    }

    @ApiOperation(value = "获取所有菜单")
    @GetMapping("/getallmenus")
    public Message getAllMenus(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "size", defaultValue = "10") Integer pageSize) {
        return Message.success().add("menus", menuService.getAllMenusByPageNum(pn, pageSize));
    }

    @ApiOperation(value = "获取所有菜单类型")
    @GetMapping("/getAllMenuTypes")
    public Message getAllMenuTypes() {
        return menuService.getAllMenuTypes();
    }

    @ApiOperation(value = "导入Excel批量导入菜单")
    @PostMapping("importmenusbyexcel")
    public String importMenusByExcel(@RequestParam("file") MultipartFile file) {
       return menuService.importMenusByExcel(file);
    }


}
