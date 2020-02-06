package com.aishang.po;

import java.util.List;

/**
 * category扩展类
 */
public class CategoryExt extends Category{
    private List<CategorySecond> categorySeconds;

    public List<CategorySecond> getCategorySeconds() {
        return categorySeconds;
    }

    public void setCategorySeconds(List<CategorySecond> categorySeconds) {
        this.categorySeconds = categorySeconds;
    }
}
