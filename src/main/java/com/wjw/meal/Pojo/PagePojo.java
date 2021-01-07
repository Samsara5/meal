package com.wjw.meal.Pojo;

import org.springframework.beans.factory.annotation.Value;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/7 22:29
 * @Description 分页传递条件
 */
public class PagePojo {
    private Integer pageNum=1;
    private Integer pageSize=10;

    public PagePojo(Integer pageNum, Integer pageSize) {
        if (pageNum==null || pageNum==0){
            this.pageNum = 1;
        }
        if (pageSize==null || pageSize==0){
            this.pageSize = 10;
        }
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
