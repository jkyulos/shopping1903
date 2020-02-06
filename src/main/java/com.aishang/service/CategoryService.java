package com.aishang.service;

import com.aishang.po.CategoryExt;

import java.util.List;

public interface CategoryService {
    /**
     * 获取全部一二级的类目
     * @return
     */
    List<CategoryExt> getAllCategory();
}
