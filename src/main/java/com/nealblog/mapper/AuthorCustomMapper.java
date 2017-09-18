package com.nealblog.mapper;

import com.nealblog.po.Author;

import java.util.List;

/**
 * 作者管理mapper
 */
public interface AuthorCustomMapper {
    //登录查询
    Author findByAuthor(Author author);

    //查询所有作者
    List<Author> findListAuthor();
}
