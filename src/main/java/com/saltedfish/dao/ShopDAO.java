package com.saltedfish.dao;

import com.saltedfish.entity.Article;
import com.saltedfish.entity.Buy;
import com.saltedfish.entity.Shop;
import org.apache.ibatis.annotations.*;

import java.util.LinkedList;

public interface ShopDAO {


    @Select("select * from shop where shopowner =#{username}")
    public LinkedList<Shop> shoplist(@Param("username") String username);

    @Select("select * from shop where shopid=#{shopid}")
    public Shop GetByShopId(@Param("shopid") String shopid);

    @Insert("insert into shop (shopid,name,num,price,sum,shopowner,artowner,artid) value (#{shopid},#{name},#{num},#{price},#{sum},#{shopowner},#{artowner},#{artid})")
    public int add(Shop a);

    @Delete("delete from shop where shopid=#{shopid}")
    public void delete(@Param("shopid") String shopid);

    @Delete("delete from shop where artowner=#{artowner}")
    public void deletebyown(@Param("artowner") String artowner);

    @Select("select * from shop where artid=#{artid}")
    public Shop GetByArtId(@Param("artid") String artid);


    @Update("update shop set num=#{num} where shopid=#{shopid}")
    public void update(Shop a);

}
