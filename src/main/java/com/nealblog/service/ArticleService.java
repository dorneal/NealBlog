package com.nealblog.service;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.po.PageBean;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ArticleService {
    //查找文章标题,显示在左边栏
    List<ArticleEx> findArticleTitle();

    //查找文章主文，返回页面json
    ArticleVo findArticleContent(String articleTitle);

    //封装每页数据
    PageBean<ArticleVo> findPageData(int currentPage);

    //更新文章点击数
    void updateArticleCount(String articleTitle);

    //处理文章搜索
    List<ArticleVo> findBySearch(String articleTitle);
}
