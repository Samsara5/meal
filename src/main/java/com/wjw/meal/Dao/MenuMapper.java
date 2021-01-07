package com.wjw.meal.Dao;

import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.MenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MenuMapper {
    int countByExample(MenuExample example);

    int deleteByExample(MenuExample example);

    int deleteByPrimaryKey(String mid);

    int insert(Menu record);

    int insertSelective(Menu record);

    List<Menu> selectByExampleWithBLOBs(MenuExample example);

    List<Menu> selectByExample(MenuExample example);

    Menu selectByPrimaryKey(String mid);

    int updateByExampleSelective(@Param("record") Menu record, @Param("example") MenuExample example);

    int updateByExampleWithBLOBs(@Param("record") Menu record, @Param("example") MenuExample example);

    int updateByExample(@Param("record") Menu record, @Param("example") MenuExample example);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKeyWithBLOBs(Menu record);

    int updateByPrimaryKey(Menu record);
}