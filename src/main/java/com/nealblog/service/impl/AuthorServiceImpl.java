package com.nealblog.service.impl;

import com.nealblog.mapper.AuthorCustomMapper;
import com.nealblog.po.Author;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author neal
 */
public class AuthorServiceImpl implements AuthorService {
    @Autowired
    private AuthorCustomMapper authorCustomMapper;

    /**
     * 处理登录
     *
     * @param author
     * @return
     */
    public Author login(Author author) {
        return authorCustomMapper.findByAuthor(author);
    }

    /**
     * 查询所有的作者记录
     *
     * @return
     */
    public List<Author> findListAuthor() {
        return authorCustomMapper.findListAuthor();
    }

    /**
     * 根据作者ID，更新作者发布文章数量
     *
     * @param authorid
     */
    public void updatePublishCount(int authorid) {
        authorCustomMapper.updatePublishCount(authorid);
    }
}
