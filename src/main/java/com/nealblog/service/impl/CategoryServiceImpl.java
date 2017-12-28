package com.nealblog.service.impl;

import com.nealblog.mapper.CategoryCustomMapper;
import com.nealblog.po.Category;
import com.nealblog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author neal
 */
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryCustomMapper categoryCustomMapper;

    /**
     * 查询所有的类别记录
     *
     * @return
     */
    public List<Category> findListCategory() {
        return categoryCustomMapper.findListCategory();
    }
}
