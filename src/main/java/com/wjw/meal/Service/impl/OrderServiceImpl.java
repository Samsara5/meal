package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.OrderContentMapper;
import com.wjw.meal.Dao.OrderMapper;
import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.*;
import com.wjw.meal.Service.OrderService;
import com.wjw.meal.Service.StoreService;
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

    @Override
    public void addOrder(Order order) {
        order.setUid(NomalUtils.getUUID());
        order.setContent(formatOrderContentToIds(order.getContent()));
        orderMapper.insert(order);
    }

    @Override
    public void importOrderByExcel(MultipartFile file) {

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
        String goods = JSON.parseObject(goodsInfo).toJSONString();
        list = JSONObject.parseArray(goods, OrderContentJsonObejct.class);
        for (OrderContentJsonObejct o : list) {
            String uuid = UUID.randomUUID().toString();
            OrderContent content = new OrderContent();
            content.setContentid(uuid);
            idList.add(uuid);
            Store storeItem = storeService.getStoreByName(o.getGoods());
            Assert.isTrue(storeItem == null, "未找到该商品");
            Assert.isTrue(Integer.valueOf(storeItem.getStroenumber()) < Integer.valueOf(o.getNum()), "商品数量不足！");
            content.setStorename(o.getGoods());
            content.setOrdernum(o.getNum());
            content.setTotalprice(String.valueOf(Integer.valueOf(o.getNum()) * Integer.valueOf(storeItem.getStroenumber())));
            contentMapper.insert(content);
        }
        return NomalUtils.ListToString(idList);
    }
}
