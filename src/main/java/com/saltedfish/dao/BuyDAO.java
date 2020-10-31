package com.saltedfish.dao;
import com.saltedfish.entity.Article;
import com.saltedfish.entity.Buy;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;


@Repository
@Mapper
public interface BuyDAO {
    @Select("select * from buy")
    public LinkedList<Buy> list();

    @Select("select * from buy where ownid =#{username}")
    public LinkedList<Buy> selllist(@Param("username") String username);

    @Select("select * from buy where buyname =#{username}")
    public LinkedList<Buy> buylist(@Param("username") String username);

    @Select("select * from buy where buyid=#{buyid}")
    public Buy GetById(@Param("buyid") String buyid);

    @Insert("insert into buy (buyid,articleid,buyname,buynum,ownid) value (#{buyid},#{articleid},#{buyname},#{buynum},#{ownid})")
    public int add(Buy a);

    @Delete("delete from buy where buyid=#{buyid}")
    public void delete(@Param("buyid") String buyid);

    @Delete("delete from buy where ownid=#{ownid}")
    public void deletebyown(@Param("ownid") String ownid);
}
