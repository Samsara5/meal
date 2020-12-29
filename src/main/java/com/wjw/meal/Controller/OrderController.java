package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Message;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(tags = "订单管理")
@RequestMapping("/order")
public class OrderController {

    @ApiOperation("新增下单记录")
    @PostMapping("addorder")
    public Message addOrder() {
        return Message.success();
    }

    @ApiOperation("导入订单Excel")
    public Message importOrderByExcel() {
        return Message.success();
    }

    @ApiOperation("删除订单记录")
    @DeleteMapping("delorder")
    public Message delOrderById() {
        return Message.success();
    }

    @ApiOperation("批量删除订单记录")
    @DeleteMapping("delorderByIds")
    public Message delOrdersByIDs() {
        return Message.success();
    }

    @ApiOperation("修改订单信息")
    @PutMapping("updateOrder")
    public Message updateOrder() {
        return Message.success();
    }

    @ApiOperation("查询所有订单")
    @GetMapping("getallorders")
    public Message getAllOrders() {
        return Message.success();
    }

    @ApiOperation("通过条件查询订单，1时间，2顾客，3状态")
    @GetMapping("getOrdersSelective")
    public Message getOrdersSelective() {
        return Message.success();
    }

}
