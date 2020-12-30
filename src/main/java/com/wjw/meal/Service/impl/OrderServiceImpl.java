package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.OrderContentMapper;
import com.wjw.meal.Dao.OrderMapper;
import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.Order;
import com.wjw.meal.Pojo.OrderContent;
import com.wjw.meal.Pojo.OrderContentExample;
import com.wjw.meal.Pojo.OrderExample;
import com.wjw.meal.Service.OrderService;
import com.wjw.meal.Service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.CollectionUtils;
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

    public List<Order> putOrderContent(List<Order> originalOrders) {
        List<Order> newOrders = new ArrayList<>();
        for (Order o : originalOrders) {
            JSONObject object = (JSONObject) JSON.toJSON(o.getContent());
            String goods = object.getString("goods");
            String number = object.getString("number");

        }
        return null;
    }
}
