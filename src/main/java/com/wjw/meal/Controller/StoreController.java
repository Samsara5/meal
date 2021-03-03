package com.wjw.meal.Controller;

import com.sun.org.apache.regexp.internal.RE;
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
    @PostMapping("/addStoreItem")
    public Message addItem(@RequestBody Store store) {
        storeService.addStore(store);
        return Message.success();
    }

    @ApiOperation("通过Excel导入仓储材料")
    @PostMapping("/importStores")
    public Message importStores(@RequestParam MultipartFile file) {
        storeService.importStoresByExcel(file);
        return Message.success();
    }

    @ApiOperation("通过id删除仓储材料")
    @PostMapping("/deleteStoresById")
    public Message delStoreByid(@RequestParam String id) {
        storeService.delStoreById(id);
        return Message.success();
    }

    @ApiOperation("通过Ids批量删除仓储材料")
    @PostMapping("/deleteStoresByIds")
    public Message delStoresByIds(@RequestParam List<String> ids) {
        storeService.delStoresByIds(ids);
        return Message.success();
    }

    @ApiOperation("修改仓储信息")
    @PostMapping("/updateStore")
    public Message updateStore(@RequestBody Store store) {
        storeService.updateStore(store);
        return Message.success();
    }

    @ApiOperation("查询所有材料")
    @GetMapping("/getAllStores")
    public Message getAllStore(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                               @RequestParam(value = "size",defaultValue = "10") Integer pageSize) {
        return Message.success().add("stores", storeService.getAllStores(pn, pageSize));
    }

    @ApiOperation("id与材料名称对应map")
    @GetMapping("/getStoreNames")
    public Message getStoreNames() {
        return Message.success().add("stores", storeService.getStoreNames());
    }

    @ApiOperation("通过类型查询库存")
    @GetMapping("/getStoreByType")
    public Message getStoreByType(@RequestParam("type") Integer typeId,
                                  @RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                  @RequestParam(value = "size",defaultValue = "10") Integer pageSize) {
        return Message.success().add("stores", storeService.getStoreByType(typeId, pn, pageSize));
    }

    @ApiOperation("通过ID查询库存")
    @GetMapping("/getStoreById")
    public Message getStoreById(@RequestParam("id")String  id){
        return Message.success().add("stores",storeService.getStoreById(id));
    }
}
