package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Pojo.Store;
import com.wjw.meal.Service.StoreService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/7 11:28
 * @Description StoreController
 */

@RestController
@Api(tags = "仓储管理")
@RequestMapping("/store")
public class StoreController {

    @Autowired
    StoreService storeService;

    @ApiOperation("增加仓储材料")
    @PutMapping("/addstoreitem")
    public Message addItem(@RequestBody Store store) {
        storeService.addStore(store);
        return Message.success();
    }

    @ApiOperation("通过Excel导入仓储材料")
    @PostMapping("/importstores")
    public Message importStores(@RequestParam MultipartFile file) {
        storeService.importStoresByExcel(file);
        return Message.success();
    }

    @ApiOperation("通过id删除仓储材料")
    @DeleteMapping("/delstorebyid")
    public Message delStoreByid(@RequestParam String id) {
        storeService.delStoreByid(id);
        return Message.success();
    }

    @ApiOperation("通过Ids批量删除仓储材料")
    @DeleteMapping("/delstoresbyids")
    public Message delStoresByIds(@RequestParam List<String> ids) {
        storeService.delStoresByIds(ids);
        return Message.success();
    }

    @ApiOperation("修改仓储信息")
    @PutMapping("/updatestore")
    public Message updateStore(@RequestBody Store store) {
        storeService.updateStrore(store);
        return Message.success();
    }

    @ApiOperation("通过名字查询材料")
    @GetMapping("/getallstores")
    public Message getAllStore() {
        return Message.success().add("stores", storeService.getAllStrores());
    }

}
