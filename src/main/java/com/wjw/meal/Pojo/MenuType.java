package com.wjw.meal.Pojo;

public class MenuType {
    private Integer mtid;

    private String mtname;

    private Integer mpid;

    private Integer mlevel;

    public Integer getMtid() {
        return mtid;
    }

    public void setMtid(Integer mtid) {
        this.mtid = mtid;
    }

    public String getMtname() {
        return mtname;
    }

    public void setMtname(String mtname) {
        this.mtname = mtname == null ? null : mtname.trim();
    }

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    public Integer getMlevel() {
        return mlevel;
    }

    public void setMlevel(Integer mlevel) {
        this.mlevel = mlevel;
    }
}