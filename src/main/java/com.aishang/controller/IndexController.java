package com.aishang.controller;

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.service.CategoryService;
import com.aishang.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

/**
 * 主页
 */
@Controller
@RequestMapping("/index")
public class IndexController {

    @Resource
    private CategoryService categoryService;
    @Resource
    private ProductService productService;
    @Resource
    private ServletContext application;

    /**
     * 跳转主页
     */
    @RequestMapping("/toIndex")
    public String toIndex(Model model){
        //获取一二级类目
        List<CategoryExt> allCategory = (List<CategoryExt>)application.getAttribute("allCategory");

        //获取楼层信息
        Map<Integer,List<Product>> floorMap= productService.getProductByCsid(allCategory);
        model.addAttribute("floorMap",floorMap);
        return "index";
    }

}
