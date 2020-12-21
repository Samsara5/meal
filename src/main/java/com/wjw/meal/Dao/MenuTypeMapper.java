package com.wjw.meal.Dao;

import com.wjw.meal.Pojo.MenuType;
import com.wjw.meal.Pojo.MenuTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MenuTypeMapper {
    int countByExample(MenuTypeExample example);

    int deleteByExample(MenuTypeExample example);

    int deleteByPrimaryKey(Integer mtid);

    int insert(MenuType record);

    int insertSelective(MenuType record);

    List<MenuType> selectByExample(MenuTypeExample example);

    MenuType selectByPrimaryKey(Integer mtid);

    int updateByExampleSelective(@Param("record") MenuType record, @Param("example") MenuTypeExample example);

    int updateByExample(@Param("record") MenuType record, @Param("example") MenuTypeExample example);

    int updateByPrimaryKeySelective(MenuType record);

    int updateByPrimaryKey(MenuType record);
}