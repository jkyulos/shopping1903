package com.aishang.service.impl;

import com.aishang.dao.OrderDao;
import com.aishang.po.*;
import com.aishang.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service

public class OrderServiceImpl implements OrderService {
    @Resource
    private OrderDao orderDao;
    /**
     * 添加订单
     * @param order
     * @param cart
     * @return
     */
    @Override
    public Integer addOrder(Order order, Cart cart) {
        //1.添加订单
        order.setTotal(cart.getTotal());
        order.setOrdertime(new Date());
        orderDao.addOrder(order);
        //2.添加订单项
        for (CartItem cartItem : cart.getCartItems()) {
            OrderItem orderItem= new OrderItem();
            //封装参数
            orderItem.setCount(cartItem.getCount());
            orderItem.setSubTotal(cartItem.getSubTotal());
            orderItem.setPid(cartItem.getProduct().getPid());
            orderItem.setOid(order.getOid());
            orderDao.addOrderItem(orderItem);
        }
        return order.getOid();
    }

    /**
     * 修改订单状态
     * @param order
     */
    @Override
    public void changeState(Order order) {
        orderDao.changeState(order);
    }

    /**
     * 查询订单详情
     * @param order
     * @return
     */
    @Override
    public OrderExt getOrderExt(Order order) {
        return orderDao.getOrderExt(order);
    }

    /**
     * 我的订单分页
     * @param orderBean
     * @return
     */
    @Override
    public OrderBean getOrderExtById(OrderBean orderBean) {
        //获取集合
        List<OrderExt> list=orderDao.getOrderExtByUid(orderBean);
        //获取rowCount
        Integer rowCount = orderDao.getRowCount(orderBean);
        //封装结果
        orderBean.setList(list);
        orderBean.setRowCount(rowCount);
        //返回结果
        return orderBean;
    }
}
