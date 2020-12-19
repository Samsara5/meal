package com.wjw.meal.Dao;

import com.wjw.meal.Pojo.EmployeeType;
import com.wjw.meal.Pojo.EmployeeTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EmployeeTypeMapper {
    int countByExample(EmployeeTypeExample example);

    int deleteByExample(EmployeeTypeExample example);

    int deleteByPrimaryKey(Integer roleid);

    int insert(EmployeeType record);

    int insertSelective(EmployeeType record);

    List<EmployeeType> selectByExample(EmployeeTypeExample example);

    EmployeeType selectByPrimaryKey(Integer roleid);

    int updateByExampleSelective(@Param("record") EmployeeType record, @Param("example") EmployeeTypeExample example);

    int updateByExample(@Param("record") EmployeeType record, @Param("example") EmployeeTypeExample example);

    int updateByPrimaryKeySelective(EmployeeType record);

    int updateByPrimaryKey(EmployeeType record);
}