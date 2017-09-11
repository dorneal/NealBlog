package com.nealblog.service.impl;

import com.nealblog.mapper.ArticleCostomMapper;
import com.nealblog.po.Article;
import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.po.PageBean;
import com.nealblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
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
        return articleCostomMapper.findArticleTitle();
    }

    /**
     * 查找正文主要内容
     *
     * @return
     */
    public ArticleVo findArticleContent(String articleTitle) {
        return articleCostomMapper.findArticleContent(articleTitle);
    }

    /**
     * 查找简要信息，用于显示在页面介绍
     *
     * @return
     */
    public PageBean<ArticleVo> findPageData(int currentPage) {
        PageBean<ArticleVo> pageBean = new PageBean<ArticleVo>();
        //封装当前页
        pageBean.setCurrPage(currentPage);
        //封装页面大小
        int pageSize = 10;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = articleCostomMapper.findPageCount();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        Double tc = Math.ceil(totalCount / pageSize);
        pageBean.setTotalPage(tc.intValue());
        //封装每页数据
        List<ArticleVo> list = articleCostomMapper.findNowArticle((currentPage+1)*pageSize, pageSize);
        pageBean.setLists(list);
        return pageBean;
    }
}
