package com.nealblog.mapper;

import com.nealblog.po.Category;

import java.util.List;

public interface CategoryCustomMapper {
    //查找所有的类别
    List<Category> findListCategory();
}
