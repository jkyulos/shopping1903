package com.aishang.service;

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;

import java.util.List;
import java.util.Map;


public interface ProductService {
    /**
     * 获取首页楼层信息
     */
    Map<Integer, List<Product>> getProductByCsid(List<CategoryExt> allCategory);

    /**
     * 商品复合查询分页
     */
    ProductBean getProductBean(ProductBean productBean);

    /**
     * 商品热购
     */
    List<Product> getProductisHot(ProductBean productBean);

    /**
     * 查询商品信息
     * @param pid
     * @return
     */
    Product getProductByID(Integer pid);
}
