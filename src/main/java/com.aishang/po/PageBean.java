package com.aishang.po;

import java.util.List;

/**
 * 将分页属性封装
 */
public class PageBean<T> {
    private Integer pageNow=1;
    private Integer pageSize=12;
    private Integer rowCount;
    private Integer pageCount;
    private Integer start;
    private List<T> list;

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Integer getStart() {
        return (pageNow-1)*pageSize>0?(pageNow-1)*pageSize:0;
    }

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public Integer getPageCount() {
        if(rowCount%pageSize==0){
           pageCount= rowCount/pageSize;
        }else {
            pageCount= rowCount/pageSize +1;
        }
        return pageCount;
    }

}
