package com.saltedfish.entity;

public class User {
    private String name;
    private String password;
    private int type;


    public String getName()
    {
        return name;
    }
    public void setName(String username)
    {
        this.name=username;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password=password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
