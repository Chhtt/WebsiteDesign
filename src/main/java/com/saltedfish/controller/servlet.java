package com.saltedfish.controller;

import com.saltedfish.dao.ArticleDAO;
import com.saltedfish.dao.UserDAO;
import com.saltedfish.entity.Article;
import com.saltedfish.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.LinkedList;

@Controller
public class servlet {
    @Autowired(required = true)
    private ArticleDAO articleDAO;
    @Autowired(required = true)
    private UserDAO userDAO;


    @RequestMapping("/welcome")
    public String welcome()
    {
        return "welcome";
    }
    @RequestMapping("/Add")
    public String Add(@Param("id") String id,
                        @Param("name") String name,
                        @Param("price") float price,
                        @Param("num") int num,
                        @Param("ownid") String ownid,
                        HttpSession session)
    {
        Article a =new Article();
        a.setId(id);
        a.setName(name);
        a.setPrice(price);
        a.setNum(num);
        a.setOwnid(ownid);
        int n = articleDAO.add(a);
        if(n>0)
        {
            return "welcome";
        }
        else
        {
            session.setAttribute("msg2","add error");
            return "add";
        }
    }

    @RequestMapping("/Delete")
    public String Delete(@Param("id") String id, HttpSession session)
    {
        articleDAO.delete(id);
        return "welcome";
    }

    @RequestMapping("/list")
    public String list(HttpSession session)
    {
        LinkedList<Article> art ;
        art=articleDAO.list();
        if(art!=null)
        {
            session.setAttribute("art",art);
            return "result";
        }
        else
        {
            session.setAttribute("msg1","查询失败");
            return "index";
        }
    }

    @RequestMapping("/Login")
    public String Login(@Param("username") String username, @Param("password") String password, HttpSession session)
    {
        if("".equals(username)||"".equals(password))
        {
            session.setAttribute("msg","用户名或密码为空");
            return  "index";
        }
        User user=userDAO.login(username,password);
        if(user!=null)
        {
            session.setAttribute("user",user);
            if(user.getName().equals("root"))
            {
                return  "home";
            }
            else {
                return "welcome";
            }
        }
        else
        {
            session.setAttribute("msg","用户名或密码错误");
            return "index";
        }
    }

    @RequestMapping("/Look")
    public String Look(@Param("name") String name, HttpSession session)
    {
        User u;
        u=userDAO.GetByName(name);
        session.setAttribute("user",u);
        return "welcome";
    }

    @RequestMapping("/MyList")
    public String MyList(@Param("username") String username, HttpSession session)
    {
        LinkedList<Article> art ;
        art=articleDAO.mylist(username);
        if(art!=null)
        {
            session.setAttribute("art",art);
            return "result";
        }
        else
        {
            session.setAttribute("msg1","查询失败");
            return "index";
        }
    }

    @GetMapping("/Update")
    public String GetUpdate(@Param("id") String id, HttpSession session)
    {
        Article a;
        a=articleDAO.GetById(id);
        session.setAttribute("a",a);
        return "Update";
    }

    @PostMapping("/Update")
    public String Update(@Param("id") String id,
                      @Param("name") String name,
                      @Param("price") float price,
                      @Param("num") int num,
                      HttpSession session)
    {
        Article a=new Article();
        a.setId(id);
        a.setName(name);
        a.setPrice(price);
        a.setNum(num);
        articleDAO.update(a);
        return "list";
    }

    @RequestMapping("/userlist")
    public String userlist(HttpSession session)
    {
        LinkedList<User> use;
        use=userDAO.userlist();
        if(use!=null)
        {
            session.setAttribute("use",use);
            return "userresult";
        }
        else
            return "welcome";
    }
}
