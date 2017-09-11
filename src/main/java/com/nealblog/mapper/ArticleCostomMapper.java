package com.nealblog.mapper;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 手动创建文章查询映射类
 */
public interface ArticleCostomMapper {
    //查找所有的文章标题
    List<ArticleEx> findArticleTitle();

    //查找简要文章
    List<ArticleVo> findNowArticle(@Param("startpage")int startpage,@Param("size")int size);

    //根据链接所给的文章标题查找正文
    ArticleVo findArticleContent(String articleTitle);

    //查询总记录数
    int findPageCount();
}
