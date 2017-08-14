package com.nealblog.service.impl;

import com.nealblog.mapper.AuthorMapper;
import com.nealblog.po.AuthorEx;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;

public class AuthorServiceImpl implements AuthorService {
    @Autowired
    private AuthorMapper authorMapper;

    @Override
    public AuthorEx login(AuthorEx authorEx) {
        return authorMapper.selectByAuthorEx(authorEx);
    }
}
