package com.aishang.controller;

import com.aishang.po.*;
import com.aishang.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@RequestMapping("/order")
@Controller
public class OrderController {
    @Resource
    private HttpSession session;
    @Resource
    private OrderService orderService;
    /**
     *跳转确认订单
     * @return
     */
    @RequestMapping("/toConfirmOrder")
    public String toConfirmOrder(Model model){
        //判断是否登录
        if(session.getAttribute("user")!=null){
            return "confirmOrder";
        }else {
            return "login";
        }
    }
    /**
     * 跳转支付页面
     */
    @RequestMapping("/toPay")
    public String toPay(Order order,Integer oid, Model model){
        Cart cart = (Cart)session.getAttribute("cart");
        //获取用户id
        Integer uid=((User) session.getAttribute("user")).getUid();
        order.setUid(uid);
        if(order.getOrdertime()!=null){
             oid=orderService.addOrder(order,cart);
        }
        model.addAttribute("oid",oid);
        if(cart!=null){
            cart.delAllCartItem();
        }
        return "pay";
    }

    /**
     * 支付校验
     */
    @RequestMapping("/doPay")
    public String doPay(Order order,Integer oid, Model model){
        //修改订单状态
        order.setState(1);
        orderService.changeState(order);
        //查询订单信息
        OrderExt orderExt=orderService.getOrderExt(order);
        model.addAttribute("orderExt",orderExt);
        return "paySuccess";
    }

    /**
     * 跳转我的订单页面
     */
    @RequestMapping("/toMyOrders")
    public String toMyOrders(OrderBean orderBean,Model model){
        if(session.getAttribute("user")!=null){
            //获取用户id
            Integer uid=((User) session.getAttribute("user")).getUid();
            orderBean.setUid(uid);
            orderBean.setPageSize(3);
            OrderBean result=orderService.getOrderExtById(orderBean);
            model.addAttribute("orderBean",result);
            return "myOrders";
        }else {
            return "login";
        }
    }
    /**
     * 跳转确认收货界面
     */
    @RequestMapping("toConFirmGoods")
    public String toConFirmGoods(Order order,Model model){
        order.setState(3);
        orderService.changeState(order);
        OrderExt orderExt = orderService.getOrderExt(order);
        model.addAttribute("orderExt",orderExt);
        return "confirmGoods";
    }

    /**
     *删除收货
     */
    @RequestMapping("toDelGoods")
    public String toDelGoods(Order order,Model model){
        order.setState(4);
        orderService.changeState(order);
        OrderExt orderExt = orderService.getOrderExt(order);
        model.addAttribute("orderExt",orderExt);
        return "confirmGoods";
    }
}
