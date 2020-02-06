package com.aishang.dao;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;

import java.util.List;

/**
 * category的dao层
 */
public interface CategoryDao {

    /**
     * 获取全部的一级二级类目集合
     * @return
     */
    List<CategoryExt> getAllCategory();
}
