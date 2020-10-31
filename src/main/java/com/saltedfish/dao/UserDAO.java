package com.saltedfish.dao;

import com.saltedfish.entity.Article;
import com.saltedfish.entity.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.LinkedList;

@Repository
@Mapper
public interface UserDAO {
    @Select("select * from user where name=#{name} and password=#{password} ")
    public User login(@Param("name") String username, @Param("password") String password);

    @Select("select * from user ")
    public LinkedList<User> userlist();

    @Select("select * from user where name=#{username}")
    public User GetByName(@Param("username") String name);

    @Insert("insert into user (name,password,type) value(#{name},#{password},#{type})")
    public int register(User user);

    @Delete("delete from user where name=#{name}")
    public void delete(@Param("name") String name);

}
