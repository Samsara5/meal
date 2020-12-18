package com.wjw.meal.Pojo;

public class Menu {
    private String mid;

    private String mname;

    private String mmateria;

    private Integer mpirce;

    private Integer mnumber;

    private String mimageurl;

    private Integer mischara;

    private Integer mtype;

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid == null ? null : mid.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMmateria() {
        return mmateria;
    }

    public void setMmateria(String mmateria) {
        this.mmateria = mmateria == null ? null : mmateria.trim();
    }

    public Integer getMpirce() {
        return mpirce;
    }

    public void setMpirce(Integer mpirce) {
        this.mpirce = mpirce;
    }

    public Integer getMnumber() {
        return mnumber;
    }

    public void setMnumber(Integer mnumber) {
        this.mnumber = mnumber;
    }

    public String getMimageurl() {
        return mimageurl;
    }

    public void setMimageurl(String mimageurl) {
        this.mimageurl = mimageurl == null ? null : mimageurl.trim();
    }

    public Integer getMischara() {
        return mischara;
    }

    public void setMischara(Integer mischara) {
        this.mischara = mischara;
    }

    public Integer getMtype() {
        return mtype;
    }

    public void setMtype(Integer mtype) {
        this.mtype = mtype;
    }
}