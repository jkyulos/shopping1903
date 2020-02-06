package com.aishang.po;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Cart {
    private Map<Integer,CartItem> cartItems= new LinkedHashMap<>();
    private Double total=0.0;

    public Collection<CartItem> getCartItems(){
        return cartItems.values();
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    /**
     * 添加购物项
     */
    public void addCartItem(CartItem cartItem) {
        Integer pid=cartItem.getProduct().getPid();
        //购物车中是否存在商品
        if(cartItems.containsKey(pid)){
            //存在，数量累加
            CartItem old=cartItems.get(pid);
            old.setCount(cartItem.getCount()+old.getCount());
        }else {
            //直接添加
            cartItems.put(pid,cartItem);
        }
        total=total+cartItem.getSubTotal();
    }

    /**
     * 更改购物项数量
     * @param count
     * @param pid
     */
    public void changeCount(Integer count, Integer pid) {
        CartItem cartItem = cartItems.get(pid);
        //先处理原来的价格
        total=total-cartItem.getSubTotal();
        //加上新价格
        cartItem.setCount(count);
        total=total+cartItem.getSubTotal();

    }

    /**
     * 删除购物项
     * @param pid
     */
    public void delCartItem(Integer pid) {
        CartItem remove= cartItems.remove(pid);
        total=total-remove.getSubTotal();
    }

    /**
     *清空购物车
     */
    public void delAllCartItem() {
        cartItems.clear();
        total=0.0;
    }

}
