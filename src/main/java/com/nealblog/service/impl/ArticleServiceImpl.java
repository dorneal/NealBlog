package com.nealblog.service.impl;

import com.nealblog.mapper.ArticleCostomMapper;
import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 文章service实现类
 */
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleCostomMapper articleCostomMapper;

    /**
     * 查找文章标题，用于显示在页面目录树
     *
     * @return
     */
    public List<ArticleEx> findArticleTitle() {
        return  articleCostomMapper.findArticleTitle();
    }

    /**
     * 查找正文主要内容
     *
     * @return
     */
    public List<ArticleVo> findArticleContent(String articleTitle) {
        return articleCostomMapper.findArticleContext(articleTitle);
    }

    /**
     * 查找简要信息，用于显示在页面介绍
     *
     * @return
     */
    public List<ArticleVo> findNowArticle() {
        return articleCostomMapper.findNowArticle();
    }
}
