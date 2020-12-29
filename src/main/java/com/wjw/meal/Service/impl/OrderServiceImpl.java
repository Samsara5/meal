package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.OrderContentMapper;
import com.wjw.meal.Dao.OrderMapper;
import com.wjw.meal.Pojo.Order;
import com.wjw.meal.Service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.spring.web.json.Json;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;

    @Autowired
    OrderContentMapper contentMapper;

    @Override
    public void addOrder(Order order) {
       JSONObject object = (JSONObject) JSON.toJSON(order.getContent());
    }

    @Override
    public void importOrderByExcel(MultipartFile file) {

    }

    @Override
    public void delOrderById(String id) {

    }

    @Override
    public void delOrdersByIDs(List<String> ids) {

    }

    @Override
    public void updateOrder(Order order) {

    }

    @Override
    public List<Order> getAllOrders() {
        return null;
    }

    @Override
    public List<Order> getOrdersSelective(String byWhat) {
        return null;
    }
}
