package com.wjw.meal.Dao;

import com.wjw.meal.Pojo.OrderContent;
import com.wjw.meal.Pojo.OrderContentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderContentMapper {
    int countByExample(OrderContentExample example);

    int deleteByExample(OrderContentExample example);

    int deleteByPrimaryKey(String contentid);

    int insert(OrderContent record);

    int insertSelective(OrderContent record);

    List<OrderContent> selectByExample(OrderContentExample example);

    OrderContent selectByPrimaryKey(String contentid);

    int updateByExampleSelective(@Param("record") OrderContent record, @Param("example") OrderContentExample example);

    int updateByExample(@Param("record") OrderContent record, @Param("example") OrderContentExample example);

    int updateByPrimaryKeySelective(OrderContent record);

    int updateByPrimaryKey(OrderContent record);
}