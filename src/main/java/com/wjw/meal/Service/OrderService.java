package com.wjw.meal.Service;
;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.wjw.meal.Pojo.Order;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface OrderService {
    void addOrder(Order order);

    void importOrderByExcel(MultipartFile file);

    void delOrderById(String id);

    void delOrdersByIDs(List<String> ids);

    void updateOrder(Order order);

    PageInfo getAllOrders(Integer pn,Integer pageSize);

    PageInfo getOrdersSelective(String byWhat,String condition,Integer pn,Integer pageSize);

    List<Order> formatOrderContent(List<Order> orderList);
}
