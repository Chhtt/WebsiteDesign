package com.saltedfish.controller;

import com.saltedfish.dao.ArticleDAO;
import com.saltedfish.dao.BuyDAO;
import com.saltedfish.dao.ShopDAO;
import com.saltedfish.dao.UserDAO;
import com.saltedfish.entity.Article;
import com.saltedfish.entity.Buy;
import com.saltedfish.entity.Shop;
import com.saltedfish.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.LinkedList;

@Controller
public class servlet {
    @Autowired(required = true)
    private ArticleDAO articleDAO;
    @Autowired(required = true)
    private UserDAO userDAO;
    @Autowired(required = true)
    private BuyDAO buydao;
    @Autowired(required = true)
    private ShopDAO shopdao;

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

    @RequestMapping("/Deleteuser")
    public String Deleteuser(@Param("name") String name, HttpSession session)
    {
        userDAO.delete(name);
        return "home";
    }
    @RequestMapping("/Deleteshop")
    public String Deleteshop(@Param("shopid") String shopid, HttpSession session)
    {
        shopdao.delete(shopid);
        return "welcome1";
    }

    @RequestMapping("/Deletebuy")
    public String Deletebuy(@Param("buyid") String buyid,HttpSession session)
    {

        Buy buy=new Buy();
        buy=buydao.GetById(buyid);
        Article a=new Article();
        a=articleDAO.GetById(buy.getArticleid());
        a.setNum(a.getNum()+buy.getBuynum());
        articleDAO.update(a);
        buydao.delete(buyid);
        User user=userDAO.GetByName(buy.getBuyname());
        session.setAttribute("user",user);
        return "welcome1";
    }

    @RequestMapping("/Deletesell")
    public String Deletesell(@Param("buyid") String buyid,HttpSession session)
    {

        Buy buy=buydao.GetById(buyid);
        Article a=new Article();
        a=articleDAO.GetById(buy.getArticleid());
        a.setNum(a.getNum()+buy.getBuynum());
        articleDAO.update(a);
        buydao.delete(buyid);
        String name=buy.getOwnid();
        User user=userDAO.GetByName(name);
        session.setAttribute("user",user);
        return "welcome";
    }

    @RequestMapping("/rootDelete")
    public String rootDelete(@Param("buyid") String buyid,HttpSession session)
    {

        Buy buy=buydao.GetById(buyid);
        Article a=new Article();
        a=articleDAO.GetById(buy.getArticleid());
        a.setNum(a.getNum()+buy.getBuynum());
        articleDAO.update(a);
        buydao.delete(buyid);

        String name="root";
        User user=userDAO.GetByName(name);
        session.setAttribute("user",user);
        return "home";
    }

    @RequestMapping("/Logout")
    public String Logout(@Param("name") String name,HttpSession session)
    {
        User user =userDAO.GetByName(name);
        if(user.getType()==1)
        {
            String artowner=name;
            String ownid=name;
            String id=name;
            articleDAO.deletebyown(id);
            shopdao.deletebyown(artowner);
            buydao.deletebyown(ownid);

        }
        userDAO.delete(name);
        return "index";
    }

    @RequestMapping("/list")
    public String list(HttpSession session)
    {
        LinkedList<Article> art ;
        art=articleDAO.list();
        if(art!=null)
        {
            session.setAttribute("art",art);
            return "rootresult";
        }
        else
        {
            session.setAttribute("msg1","查询失败");
            return "index";
        }
    }

    @RequestMapping("/listforuser")
    public String listforuser(HttpSession session)
    {
        LinkedList<Article> art ;
        art=articleDAO.list();
        if(art!=null)
        {
            session.setAttribute("art",art);
            return "listforuser";
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
            if(user.getType()==0)
            {
                return  "home";
            }
            if(user.getType()==1)
            {
                    return "welcome";
            }
            if (user.getType()==2)
            {
                return "welcome1";
            }

        }
        else
        {
            session.setAttribute("msg","用户名或密码错误");
            return "index";
        }

        return username;
    }

    @RequestMapping("/register")
    public String register( @Param("name") String name,@Param("password") String password ,@Param("type") int type, HttpSession session)
    {
        User user=userDAO.GetByName(name);
        if(user!=null) {
            session.setAttribute("msg","用户名已存在");
        }
        else {
            user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setType(type);
            int n = userDAO.register(user);
        }
        return "index";
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
        return "welcome";
    }

    @PostMapping("/toadd")
    public String toadd()
    {
        return "add";
    }
    @GetMapping("/toindex")
    public String toindex(HttpSession session)
    {
        session.setAttribute("msg"," ");
        return "index";
    }
    @RequestMapping("/toarticle")
    public String toarticle(@Param("id") String id,HttpSession session)
    {
        Article a=articleDAO.GetById(id);
        session.setAttribute("a",a);
        return "article";
    }

    @GetMapping("/buy")
    public String Getbuy(@Param("id") String id, HttpSession session)
    {
        Article a;
        a=articleDAO.GetById(id);
        session.setAttribute("a",a);
        return "Buy";
    }

    @PostMapping("/buy")
    public String buy   (@Param("id") String id,
                         @Param("buyid") String buyid,
                         @Param("num") int num,
                         @Param("buyname") String buyname,
                         HttpSession session)
    {

        Article a=articleDAO.GetById(id);
        Buy b=buydao.GetById(buyid);
        if(b==null) {
            a.setNum(a.getNum() - num);
            articleDAO.update(a);
            Buy buy = new Buy();
            buy.setBuyid(buyid);
            buy.setArticleid(a.getId());
            buy.setBuynum(num);
            buy.setBuyname(buyname);
            buy.setOwnid(a.getOwnid());
            buydao.add(buy);
            User user= userDAO.GetByName(buyname);
            session.setAttribute("user",user);
            return "welcome1";
        }
        else
        {
            session.setAttribute("buymsg","流水号已经存在");
            return "Buy";
        }

    }
    @GetMapping ("/findart")
    public String find(HttpSession session)
    {

        return "findart";
    }
    @PostMapping ("/findart")
    public String findart(@Param("id") String id ,HttpSession session)
    {
        Article a1=articleDAO.GetById(id);
        if(a1!=null)
        {
            session.setAttribute("a1",a1);
        }
        else
        {
            session.setAttribute("findmsg","没有此商品");
        }
        return "findresult";
    }

    @RequestMapping("/buyfromshop")
    public String buyfromshop(@Param("shopid") String shopid, HttpSession session)
    {
        Shop shop=shopdao.GetByShopId(shopid);
        Article a=articleDAO.GetById(shop.getArtid());
        a.setNum(a.getNum()-shop.getNum());
        articleDAO.update(a);
        Buy buy =new Buy();
        buy.setBuyid(shopid);
        buy.setArticleid(a.getId());
        buy.setBuynum(shop.getNum());
        buy.setBuyname(shop.getShopowner());
        buy.setOwnid(a.getOwnid());
        buydao.add(buy);
        shopdao.delete(shopid);

        return "welcome1";

    }

    @GetMapping("/shopadd")
    public String Getshop(@Param("id") String id, HttpSession session)
    {
        Article a;
        a=articleDAO.GetById(id);
        session.setAttribute("a",a);
        return "Shop";
    }
    @PostMapping("/shopadd")
    public String shopadd  (@Param("id") String id,
                         @Param("shopid") String shopid,
                         @Param("num") int num,
                         @Param("shopowner") String shopowner,
                         HttpSession session)
    {
        Shop shop1=shopdao.GetByShopId(shopid);
        if(shop1==null) {

            Shop shop = shopdao.GetByArtId(id);
            if (shop != null) {

                shop.setNum(shop.getNum() + num);
                shopdao.update(shop);
            } else {
                Article a = articleDAO.GetById(id);
                shop = new Shop();
                shop.setShopid(shopid);
                shop.setName(a.getName());
                shop.setNum(num);
                shop.setPrice(a.getPrice());
                shop.setSum();
                shop.setArtid(id);
                shop.setShopowner(shopowner);
                shop.setArtowner(a.getOwnid());
                shopdao.add(shop);
            }
            User user = userDAO.GetByName(shopowner);
            session.setAttribute("user",user);
            return "welcome1";
        }
        else
        {
            session.setAttribute("shopmsg","购物号已经存在");
            return "shop";
        }
    }



    @RequestMapping("/userlist")
    public String userlist(HttpSession session)
    {
        LinkedList<User> users;
        users=userDAO.userlist();
        if(users!=null)
        {
            session.setAttribute("users",users);
            return "userresult";
        }
        else
            return "welcome";
    }

    @RequestMapping("/buylist")
    public String buylist(@Param("name") String name, HttpSession session)
    {
        LinkedList<Buy> buys;
        buys=buydao.buylist(name);
        if(buys!=null)
        {
            session.setAttribute("buys",buys);
            return "buylist";
        }
        else
        {
            return "welcome1";
        }
    }
    @RequestMapping("/selllist")
    public String selllist(@Param("name") String name, HttpSession session)
    {
        LinkedList<Buy> buys;
        buys=buydao.selllist(name);
        if(buys!=null)
        {
            session.setAttribute("buys",buys);
            return "selllist";
        }
        else
        {
            return "welcome1";
        }
    }
    @RequestMapping("/alllist")
    public String alllist(HttpSession session)
    {
        LinkedList<Buy> buys;
        buys=buydao.list();
        if(buys!=null)
        {
            session.setAttribute("buys",buys);
            return "alllist";
        }
        else
        {
            return "home";
        }
    }

    @RequestMapping("/shoplist")
    public String shoplist( @Param("name") String name, HttpSession session)
    {
        LinkedList<Shop> shops;
        shops=shopdao.shoplist(name);
        if(shops!=null)
        {
            session.setAttribute("shops",shops);
            return "shoplist";
        }
        else
        {
            return "welcome1";
        }
    }


}
