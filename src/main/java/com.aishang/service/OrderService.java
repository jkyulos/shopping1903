package com.aishang.service;

import com.aishang.po.Cart;
import com.aishang.po.Order;
import com.aishang.po.OrderBean;
import com.aishang.po.OrderExt;

public interface OrderService {
    /**
     *添加订单
     */

    Integer addOrder(Order order, Cart cart);

    /**
     * 修改订单状态
     * @param oid
     */
    void changeState(Order oid);

    /**
     * 查询订单详情
     * @param order
     * @return
     */
    OrderExt getOrderExt(Order order);

    /**
     * 我的订单分页
     * @param orderBean
     * @return
     */
    OrderBean getOrderExtById(OrderBean orderBean);
}
