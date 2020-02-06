package com.aishang.controller;

import com.aishang.po.Cart;
import com.aishang.po.CartItem;
import com.aishang.po.Product;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@RequestMapping("/cart")
@Controller
public class CartController {
    @Resource
    private ProductService productService;
    @Resource
    private HttpSession session;

    /**
     *跳转购物车页面
     */
    @RequestMapping("/toCart")
    public String toCart(){
        return "cart";
    }

    /**
     * 添加购物项
     * @return
     */
    @RequestMapping("/addCartItem")
    @ResponseBody
    public String addCartItem(Integer count,Integer pid){
        //接收参数并封装CartItem
        CartItem cartItem=new CartItem();
        Product product=productService.getProductByID(pid);
        cartItem.setCount(count);
        cartItem.setProduct(product);
        //获取session中的购物车的cart，将CartItem放入购物车
        Cart cart =(Cart) session.getAttribute("cart");
        if(cart!=null){
            //session中存在购物车
            cart.addCartItem(cartItem);
        }else {
            //session中无购物车
            cart=new Cart();
            cart.addCartItem(cartItem);
            session.setAttribute("cart",cart);
        }
        return "success";
    }

    /**
     *     更改购物项数量
     */
    @RequestMapping("/changeCount")
    @ResponseBody
    public String changeCount(Integer count,Integer pid){
        Cart cart =(Cart) session.getAttribute("cart");
        if(cart!=null){
            //更改总价
            cart.changeCount(count,pid);
        }
        return cart.getTotal()+"";
    }

    /**
     *删除购物项
     */
    @RequestMapping("/delCartItem")
    @ResponseBody
    public String delCartItem(Integer pid){
        Cart cart=(Cart) session.getAttribute("cart");
        if(cart!=null){
            cart.delCartItem(pid);
        }
        return cart.getTotal()+"";
    }

    /**
     * 清空购物车
     */
    @RequestMapping("/delAllCartItem")
    @ResponseBody
    public String delAllCartItem(){
        Cart cart=(Cart) session.getAttribute("cart");
        if(cart!=null){
            cart.delAllCartItem();
        }
        return cart.getTotal()+"";
    }
}
