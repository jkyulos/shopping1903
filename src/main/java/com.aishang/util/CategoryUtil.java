package com.aishang.util;

import com.aishang.po.CategoryExt;
import com.aishang.service.CategoryService;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;

/**
 * category的工具类
 */
@Component
public class CategoryUtil {

    @Resource
    private CategoryService categoryService;

    @Resource
    private ServletContext application;

    @PostConstruct
    public void init(){
        //获取一二级类目
        List<CategoryExt> allCategory = categoryService.getAllCategory();
        application.setAttribute("allCategory",allCategory);
    }
}
