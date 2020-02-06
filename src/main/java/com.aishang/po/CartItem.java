package com.aishang.po;

public class CartItem {
    private Product product;
    private Integer count;
    private Double subTotal=0.0;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getSubTotal() {
        return product.getShopprice()*count;
    }

}
