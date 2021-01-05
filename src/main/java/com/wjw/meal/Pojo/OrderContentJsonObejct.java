package com.wjw.meal.Pojo;

public class OrderContentJsonObejct {

    String goods;

    String num;

    public OrderContentJsonObejct(){

    }

    public OrderContentJsonObejct(String goods, String num) {
        this.goods = goods;
        this.num = num;
    }

    public String getGoods() {
        return goods;
    }

    public void setGoods(String goods) {
        this.goods = goods;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "OrderContentJsonObejct{" +
                "goods='" + goods + '\'' +
                ", num='" + num + '\'' +
                '}';
    }
}
