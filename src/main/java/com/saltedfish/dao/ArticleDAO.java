package com.saltedfish.dao;
import com.saltedfish.entity.Article;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;


@Repository
@Mapper
public interface ArticleDAO {
    @Select("select * from article")
    public LinkedList<Article> list();

    @Select("select * from article where ownid =#{username}")
    public LinkedList<Article> mylist(@Param("username") String username);

    @Select("select * from article where id=#{id}")
    public Article GetById(@Param("id") String id);

    @Insert("insert into article (id,name,price,num,ownid) value (#{id},#{name},#{price},#{num},#{ownid})")
    public int add(Article a);

    @Delete("delete from article where id=#{id}")
    public void delete(@Param("id") String id);

    @Update("update article set name =#{name},price={price},num=#{num} where id=#{id}")
    public void update(Article a);
}
