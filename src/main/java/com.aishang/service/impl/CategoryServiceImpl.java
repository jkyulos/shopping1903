package com.aishang.service.impl;

import com.aishang.dao.CategoryDao;
import com.aishang.po.CategoryExt;
import com.aishang.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Resource
    private CategoryDao categoryDao;
    /**
     * 获取全部的一二级类目
     * @return
     */
    @Override
    public List<CategoryExt> getAllCategory() {
        return categoryDao.getAllCategory();
    }
}
