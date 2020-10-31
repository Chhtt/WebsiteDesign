package com.saltedfish.entity;

public class Shop {
    String shopid;
    String name;
    int num;
    float price;
    float sum;
    String shopowner;
    String artowner;
    String artid;

    public String getArtid() {
        return artid;
    }

    public void setArtid(String artid) {
        this.artid = artid;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getPrice() {
        return price;
    }

    public float getSum() {
        return sum;
    }

    public String getArtowner() {
        return artowner;
    }

    public void setArtowner(String artowner) {
        this.artowner = artowner;
    }

    public String getShopowner() {
        return shopowner;
    }

    public void setShopowner(String shopowner) {
        this.shopowner = shopowner;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getNum() {
        return num;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getShopid() {
        return shopid;
    }

    public void setShopid(String shopid) {
        this.shopid = shopid;
    }

    public void setSum() {
        this.sum = this.num*this.price;
    }
}
