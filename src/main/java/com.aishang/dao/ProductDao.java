package com.aishang.dao;

import com.aishang.po.PageBean;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;

import java.util.List;

/**
 * product的dao层
 */
public interface ProductDao {
    /**
     * 根据二级类目csid查询商品集合
     * @param csid
     * @return
     */
    List<Product> getProductByCsid(Integer csid);

    /**
     * 复合查询商品分页
     */
    List<Product> getProductByPage(ProductBean productBean);

    /**
     * 查询rowCount
     */
    Integer getRowCount(ProductBean productBean);

    /**
     * 商品热购
     */
    List<Product> getProductisHot(ProductBean productBean);

    /**
     * 查询商品详情
     * @param pid
     * @return
     */
    Product getProductByID(Integer pid);
}
