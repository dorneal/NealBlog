package com.nealblog.mapper;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 手动创建文章查询映射类
 */
public interface ArticleCustomMapper {
    //查找所有的文章标题
    List<ArticleEx> findArticleTitle();

    //查找简要文章,分页显示
    List<ArticleVo> findNowArticle(@Param("startpage") int startpage, @Param("size") int size);

    //根据链接所给的文章标题查找正文
    ArticleVo findArticleContent(String articleTitle);

    //查询文章总记录数
    int findPageCountByArticle();

    //查询笔记总记录数
    int findPageCountByNote();

    //更新点击数
    void updateArticleCount(String articleTitle);

    //个人文章页面站内搜索
    List<ArticleVo> findBySearch(String articleTitle);

    //查询前10行的文章记录
    List<ArticleEx> findListArticle();

    //分页显示笔记
    List<ArticleVo> findNowNote(@Param("startpage") int startpage, @Param("size") int size);

    //用于博主，分页显示文章
    List<ArticleVo> findNowArticles(@Param("startpage") int startpage, @Param("size") int size);

    //用于博主，分页显示笔记
    List<ArticleVo> findNowNotes(@Param("startpage") int startpage, @Param("size") int size);

    //根据id删除文章
    void deleteArticleById(int id);

    //用于博主点击更新查询
    ArticleVo findByArticleId(int id);

    //用于博主点击搜索（文章）
    List<ArticleVo> findByArticleTitleSearch(String articletitle);

    //用于博主点击搜索（笔记）
    List<ArticleVo> findByNoteTitleSearch(String articletitle);
}
