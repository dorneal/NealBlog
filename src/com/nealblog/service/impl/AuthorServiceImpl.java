package com.nealblog.service.impl;

import com.nealblog.mapper.AuthorMapper;
import com.nealblog.po.AuthorEx;
import com.nealblog.po.AuthorVo;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;

public class AuthorServiceImpl implements AuthorService {
    @Autowired
    private AuthorMapper authorMapper;

    @Override
    public AuthorEx login(AuthorVo authorVo) {
        AuthorEx authorEx = authorMapper.selectByAuthorEx(authorVo);
        return authorEx;
    }
}
