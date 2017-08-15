package com.nealblog.service;

import com.nealblog.po.AuthorEx;
import com.nealblog.po.AuthorVo;

public interface AuthorService {
    AuthorEx login(AuthorVo authorVo);
}
