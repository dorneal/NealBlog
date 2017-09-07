package com.nealblog.service;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ArticleService {
    //查找文章标题,显示在左边栏
    List<ArticleEx> findArticleTitle();
    //查找文章主文，返回页面json
    List<ArticleVo> findArticleContent(String articleTitle);
    //查找文章简要
    List<ArticleEx> findNowArticle();
}
