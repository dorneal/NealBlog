package com.nealblog.mapper;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;

import java.util.List;

/**
 * 手动创建文章查询映射类
 */
public interface ArticleCostomMapper {
    //查找所有的文章标题
    List<ArticleEx> findArticleTitle();

    //查找简要文章
    List<ArticleEx> findNowArticle();

    //根据链接所给的文章标题查找正文
    List<ArticleVo> findArticleContext(String articleTitle);
}
