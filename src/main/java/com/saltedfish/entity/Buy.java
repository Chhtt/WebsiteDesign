package com.saltedfish.entity;

public class Buy {
    String buyid;
    String articleid;
    String buyname;
    int    Buynum;
    String ownid;

    public void setArticleid(String articleid) {
        this.articleid = articleid;
    }

    public String getArticleid() {
        return articleid;
    }

    public int getBuynum() {
        return Buynum;
    }

    public void setBuynum(int buynum) {
        Buynum = buynum;
    }

    public void setOwnid(String ownid) {
        this.ownid = ownid;
    }

    public String getOwnid() {
        return ownid;
    }



    public String getBuyid() {
        return buyid;
    }

    public String getBuyname() {
        return buyname;
    }



    public void setBuyid(String buyid) {
        this.buyid = buyid;
    }

    public void setBuyname(String buyname) {
        this.buyname = buyname;
    }
}
