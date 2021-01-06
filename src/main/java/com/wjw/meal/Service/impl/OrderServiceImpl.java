package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.OrderContentMapper;
import com.wjw.meal.Dao.OrderMapper;
import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.*;
import com.wjw.meal.Service.MenuService;
import com.wjw.meal.Service.OrderService;
import com.wjw.meal.Service.StoreService;
import com.wjw.meal.Service.UserService;
import com.wjw.meal.Utils.ExcelUtils;
import com.wjw.meal.Utils.NomalUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;



import java.util.*;

import static com.wjw.meal.Utils.NomalUtils.transferStringToDate;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;

    @Autowired
    OrderContentMapper contentMapper;

    @Autowired
    StoreMapper storeMapper;

    @Autowired
    StoreService storeService;

    @Autowired
    UserService userService;

    @Autowired
    MenuService menuService;

    @Override
    public void addOrder(Order order) {
        order.setUid(NomalUtils.getUUID());
        order.setContent(formatOrderContentToIds(order.getContent()));
        orderMapper.insert(order);
    }

    @Override
    public void importOrderByExcel(MultipartFile file) {
        ExcelUtils sheet = new ExcelUtils(file, "orders");
        Map<String, List<String>> sheetinfo = sheet.readExcelData();
        for (int i = 1; i < sheetinfo.size(); i++) {
            int totalPrice = 0;
            List<String> columnData = sheetinfo.get(String.valueOf(i));
            Order order = new Order();
            order.setOid(NomalUtils.getUUID());
            //下单人Id
            order.setUid(userService.getUserByName(columnData.get(0)).getUid());
            //将菜品组合成json 通过工具转换为id列表
            List<OrderContentJsonObejct> obejcts = new ArrayList<>();
            for (int j = 1; j < 6; j++) {
                if (j % 2 == 0) {
                    continue;
                }
                if (columnData.get(j) == null || columnData.get(j) == "") {
                    continue;
                }
                obejcts.add(new OrderContentJsonObejct(columnData.get(j), columnData.get(j + 1)));
                Menu menu = menuService.getMenuByMenuName(columnData.get(j));
                totalPrice = totalPrice + (NomalUtils.StringToInt(menu.getMpirce()) * NomalUtils.StringToInt(columnData.get(j + 1)));
            }
            //本次订单总价格
            order.setPrice(String.valueOf(totalPrice));
            Map<String, List<OrderContentJsonObejct>> ordercontent = new HashMap<>();
            ordercontent.put("goods", obejcts);
            System.out.println(JSON.toJSONString(ordercontent));
            String orderContentIds = formatOrderContentToIds(JSON.toJSONString(ordercontent));
            order.setContent(orderContentIds);
            //订单创建时间
            order.setCreatetime(NomalUtils.transferStringToDate(columnData.get(11)));
            //订单完成时间
            order.setFinshtime(NomalUtils.transferStringToDate(columnData.get(12)));
            switch (columnData.get(13)) {
                case "未完成":
                    order.setState(0);
                    break;
                case "已完成":
                    order.setState(1);
                    break;
                default:
                    order.setState(-1);
                    break;
            }
            orderMapper.insert(order);
        }


    }

    @Override
    public void delOrderById(String id) {
        Order order = orderMapper.selectByPrimaryKey(id);
        Assert.notNull(order, "订单不存在！");
        String[] contentIds = order.getContent().split(",");
        List<String> delIds = new ArrayList<>();
        for (int i = 0; i < contentIds.length; i++) {
            delIds.add(contentIds[i]);
        }
        OrderContentExample example = new OrderContentExample();
        example.createCriteria().andContentidIn(delIds);
        contentMapper.deleteByExample(example);
        orderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void delOrdersByIDs(List<String> ids) {
        OrderExample orderExample = new OrderExample();
        orderExample.createCriteria().andOidIn(ids);
        List<Order> orders = orderMapper.selectByExample(orderExample);
        for (Order item : orders) {
            delOrderById(item.getOid());
        }
    }

    @Override
    public void updateOrder(Order order) {
        OrderExample example = new OrderExample();
        example.createCriteria().andOidEqualTo(order.getOid());
        order.setContent(formatOrderContentToIds(order.getContent()));
        orderMapper.updateByExampleSelective(order, example);
    }

    @Override
    public List<Order> getAllOrders() {
        return orderMapper.selectByExample(null);
    }

    @Override
    public List<Order> getOrdersSelective(String byWhat, String condition) {
        if (byWhat.equals("time")) {
            String[] times = condition.split(",");
            return selectByTime(times[0], times[1]);
        }
        if (byWhat.equals("customer")) {
            return selectByUserId(condition);
        }
        if (byWhat.equals("state")) {
            return selectByState(condition);
        }
        return null;
    }

    public List<Order> selectByTime(String start, String end) {
        OrderExample example = new OrderExample();
        example.createCriteria().andCreatetimeBetween(transferStringToDate(start), transferStringToDate(end));
        return formatOrderContent(orderMapper.selectByExample(example));
    }

    public List<Order> selectByUserId(String UId) {
        OrderExample example = new OrderExample();
        example.createCriteria().andUidEqualTo(UId);
        return formatOrderContent(orderMapper.selectByExample(example));
    }

    public List<Order> selectByState(String State) {
        OrderExample example = new OrderExample();
        example.createCriteria().andStateEqualTo(Integer.valueOf(State));
        return formatOrderContent(orderMapper.selectByExample(example));
    }

    //返回给前端的数据 将id解析为具体的商品
    public List<Order> formatOrderContent(List<Order> orderList) {
        List<Order> orders = new ArrayList<>();
        for (Order o : orderList) {
            String[] split = o.getContent().split(",");
            List<OrderContent> contentList = new ArrayList<>();
            for (int i = 0; i < split.length; i++) {
                contentList.add(contentMapper.selectByPrimaryKey(split[i]));
            }
            o.setContent(JSON.toJSONString(contentList));
            orders.add(o);
        }
        return orders;
    }

    //将内容转换为id，并将内容记录放入数据库 并将转换后的Id列表返回
    public String formatOrderContentToIds(String goodsInfo) {
        List<OrderContentJsonObejct> list;
        List<String> idList = new ArrayList<>();
        list = JSONObject.parseArray(JSON.parseObject(goodsInfo).getString("goods"), OrderContentJsonObejct.class);
        for (OrderContentJsonObejct o : list) {
            String uuid = UUID.randomUUID().toString();
            OrderContent content = new OrderContent();
            content.setContentid(uuid);
            idList.add(uuid);
            Store storeItem = storeService.getStoreByName(o.getGoods());
            Assert.isTrue(storeItem != null, o.getGoods() + "--> 未找到该商品");
            Assert.isTrue(NomalUtils.StringToInt(storeItem.getStroenumber()) > NomalUtils.StringToInt(o.getNum()), o.getGoods() + "--> 商品数量不足！");
            content.setStorename(o.getGoods());
            content.setOrdernum(o.getNum());
            Menu menu = menuService.getMenuByMenuName(o.getGoods());
            content.setTotalprice(String.valueOf(NomalUtils.StringToInt(o.getNum()) * NomalUtils.StringToInt(menu.getMpirce())));
            contentMapper.insert(content);
        }
        return NomalUtils.ListToString(idList);
    }
}
