package com.nealblog.service;

import com.nealblog.po.Category;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 类别业务接口
 *
 * @author Neal
 */
@Service
public interface CategoryService {
    //查询所有的类别记录
    List<Category> findListCategory();
}
