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

    //根据作者id，更新作者文章发布数量
    void updatePublishCount(int authorid);
}
