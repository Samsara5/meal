package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Order;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface OrderService {
    void addOrder(Order order);

    void importOrderByExcel(MultipartFile file);

    void delOrderById(String id);

    void delOrdersByIDs(List<String> ids);

    void updateOrder(Order order);

    List<Order> getAllOrders();

    List<Order> getOrdersSelective(String byWhat,String condition);
}
