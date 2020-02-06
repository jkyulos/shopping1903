package com.aishang.dao;

import com.aishang.po.Order;
import com.aishang.po.OrderBean;
import com.aishang.po.OrderExt;
import com.aishang.po.OrderItem;

import java.util.List;

public interface OrderDao {
    /**
     * 添加订单
     * @param order
     */
    void addOrder(Order order);

    /**
     * 添加订单项
     * @param orderItem
     */
    void addOrderItem(OrderItem orderItem);

    /**
     * 修改订单状态
     * @param order
     */
    void changeState(Order order);

    /**
     * 查询订单详情
     * @param order
     * @return
     */
    OrderExt getOrderExt(Order order);

    /**
     * 我的订单分页
     */
    List <OrderExt> getOrderExtByUid(OrderBean orderBean);

    /**
     * 查询我的订单rowCount
     */
    Integer getRowCount(OrderBean orderBean);
}
