package com.aishang.service.impl;

import com.aishang.dao.ProductDao;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * product实现类
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Resource
    private ProductDao productDao;

    /**
     * 获取首页楼层商品信息
     * @param allCategory
     * @return
     */
    @Override
    public Map<Integer, List<Product>> getProductByCsid(List<CategoryExt> allCategory) {
        Map<Integer, List<Product>> map=new HashMap<>();
        //获取csid
        for (CategoryExt categoryExt : allCategory) {
            for (CategorySecond categorySecond : categoryExt.getCategorySeconds()) {
                //根据二级类目csid查询商品集合
               List<Product> products= productDao.getProductByCsid(categorySecond.getCsid());
               map.put(categorySecond.getCsid(),products);
            }
        }
        return map;
    }

    /**
     * 商品复合查询分页
     * @param productBean
     * @return
     */
    @Override
    public ProductBean getProductBean(ProductBean productBean) {
        //获取集合
        List<Product> productByPage = productDao.getProductByPage(productBean);
        //获取roucount
        Integer rowCount = productDao.getRowCount(productBean);
        //封装参数
        productBean.setList(productByPage);
        productBean.setRowCount(rowCount);
        //返回结果
        return productBean;
    }

    @Override
    public List<Product> getProductisHot(ProductBean productBean) {
        //获取集合
        List<Product> productisHot = productDao.getProductisHot(productBean);
        return productisHot;
    }

    @Override
    public Product getProductByID(Integer pid) {
        return productDao.getProductByID(pid);
    }

}
