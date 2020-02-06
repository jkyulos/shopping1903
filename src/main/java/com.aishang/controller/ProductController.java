package com.aishang.controller;

/**
 * Product的controller层
 */

import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private ProductService productService;

    /**
     * 跳转toSearchProduct页
     * @return
     */
    @RequestMapping("/toSearchProduct")
    public String toSearchProduct(ProductBean productBean, Model model){
        //处理中文乱码
        if(productBean!=null && productBean.getpName()!=null){
            String pName=productBean.getpName();
            try {
                pName=new String(pName.getBytes("ISO-8859-1"),"UTF-8");
                productBean.setpName(pName);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        ProductBean result = productService.getProductBean(productBean);
        model.addAttribute("productBean",result);
        //商品热购
        List<Product> productisHot = (List<Product>)productService.getProductisHot(productBean);
        model.addAttribute("productisHot",productisHot);
        return "searchProduct";
    }
    /**
     * 跳转商品详情页
     */
    @RequestMapping("toProductDetail")
    public String toProductDetail(Integer pid,Model model){
        Product product=productService.getProductByID(pid);
        model.addAttribute("product",product);
        return "productDetail";
    }
}
