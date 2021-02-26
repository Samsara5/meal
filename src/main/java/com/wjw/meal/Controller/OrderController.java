package com.wjw.meal.Controller;

import com.github.pagehelper.PageInfo;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Pojo.Order;
import com.wjw.meal.Service.OrderService;
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
 * @Description OrderController
 */

@RestController
@Api(tags = "订单管理")
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService orderService;

    @ApiOperation("新增下单记录")
    @PostMapping("/addorder")
    public Message addOrder(@RequestBody Order order) {
        orderService.addOrder(order);
        return Message.success();
    }

    @ApiOperation("导入订单Excel")
    @PostMapping("/importOrdersByExcel")
    public Message importOrderByExcel(@RequestParam MultipartFile file) {
        orderService.importOrderByExcel(file);
        return Message.success();
    }

    @ApiOperation("删除订单记录")
    @PostMapping("/delorder")
    public Message delOrderById(@RequestBody Map<String, String> id) {
        orderService.delOrderById(id.get("id"));
        return Message.success();
    }

    @ApiOperation("批量删除订单记录")
    @PostMapping("/delorderByIds")
    public Message delOrdersByIDs(@RequestBody List<String> Ids) {
        orderService.delOrdersByIDs(Ids);
        return Message.success();
    }

    @ApiOperation("修改订单信息")
    @PutMapping("/updateOrder")
    public Message updateOrder(@RequestParam Order order) {
        orderService.updateOrder(order);
        return Message.success();
    }

    @ApiOperation("查询所有订单")
    @GetMapping("/getallorders")
    public Message getAllOrders(@RequestParam(value = "pn",defaultValue = "1")Integer pn,@RequestParam(value = "size",defaultValue = "10")Integer pageSize) {
        PageInfo info = orderService.getAllOrders( pn, pageSize);
        List list = orderService.formatOrderContent(info.getList());
        info.setList(list);
        return Message.success().add("orderInfo",info);
    }

    @ApiOperation("通过条件查询订单，1时间，2顾客，3状态")
    @GetMapping("/getOrdersSelective")
    public Message getOrdersSelective(@RequestParam("bywhat") String bywhat,
                                      @RequestParam("condition") String condition,
                                      @RequestParam(value = "pn",defaultValue = "1")Integer pn,
                                      @RequestParam(value = "size",defaultValue = "10")Integer pageSize) {
        PageInfo info = orderService.getOrdersSelective(bywhat, condition, pn, pageSize);
        List list = orderService.formatOrderContent(info.getList());
        info.setList(list);
        return Message.success().add("orderInfo",info);
    }
}
