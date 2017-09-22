package com.nealblog.service;

import com.nealblog.po.Author;
import com.nealblog.po.AuthorEx;
import com.nealblog.po.AuthorVo;

import java.util.List;

/**
 * 作者业务逻辑接口
 *
 * @author Neal
 */
public interface AuthorService {
    //博主登录
    Author login(Author author);

    //查询所有作者
    List<Author> findListAuthor();

    //根据作者ID，更新作者发布文章数量
    void updatePublishCount(int authorid);
}
