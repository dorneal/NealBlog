package com.nealblog.service.impl;

import com.nealblog.mapper.ArticleCustomMapper;
import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.po.PageBean;
import com.nealblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 文章service实现类
 */
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleCustomMapper articleCustomMapper;

    /**
     * 查找文章标题，用于显示在页面目录树
     *
     * @return
     */
    public List<ArticleEx> findArticleTitle() {
        return articleCustomMapper.findArticleTitle();
    }

    /**
     * 查找正文主要内容
     *
     * @return
     */
    public ArticleVo findArticleContent(String articleTitle) {
        return articleCustomMapper.findArticleContent(articleTitle);
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
        int totalCount = articleCustomMapper.findPageCountByArticle();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        Double tc = Math.ceil(totalCount / pageSize);
        pageBean.setTotalPage(tc.intValue());
        //封装每页数据
        List<ArticleVo> list = articleCustomMapper.findNowArticle((currentPage - 1) * pageSize, pageSize);
        pageBean.setLists(list);
        return pageBean;
    }

    /**
     * 笔记分页,显示在笔记模块右侧
     *
     * @param currentPage
     * @return
     */
    public PageBean<ArticleVo> findPageNote(int currentPage) {
        PageBean<ArticleVo> pageBean = new PageBean<ArticleVo>();
        //封装当前页
        pageBean.setCurrPage(currentPage);
        //封装页面大小
        int pageSize = 10;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = articleCustomMapper.findPageCountByNote();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        Double tc = Math.ceil(totalCount / pageSize);
        pageBean.setTotalPage(tc.intValue());
        //封装每页数据
        List<ArticleVo> list = articleCustomMapper.findNowNote((currentPage - 1) * pageSize, pageSize);
        pageBean.setLists(list);
        return pageBean;
    }

    /**
     * 文章分页，显示在博主模块
     *
     * @param currentPage
     * @return
     */
    public PageBean<ArticleVo> findByPageArticle(int currentPage) {
        PageBean<ArticleVo> pageBean = new PageBean<ArticleVo>();
        //封装当前页
        pageBean.setCurrPage(currentPage);
        //封装页面大小
        int pageSize = 20;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = articleCustomMapper.findPageCountByArticle();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        Double tc = Math.ceil(totalCount / pageSize);
        pageBean.setTotalPage(tc.intValue());
        //封装每页数据
        List<ArticleVo> list = articleCustomMapper.findNowArticles((currentPage - 1) * pageSize, pageSize);
        pageBean.setLists(list);
        return pageBean;
    }

    /**
     * 笔记分页,显示在博主模块
     *
     * @param currentPage
     * @return
     */
    public PageBean<ArticleVo> findByPageNote(int currentPage) {
        PageBean<ArticleVo> pageBean = new PageBean<ArticleVo>();
        //封装当前页
        pageBean.setCurrPage(currentPage);
        //封装页面大小
        int pageSize = 10;
        pageBean.setPageSize(pageSize);
        //封装总记录数
        int totalCount = articleCustomMapper.findPageCountByNote();
        pageBean.setTotalCount(totalCount);
        //封装总页数
        Double tc = Math.ceil(totalCount / pageSize);
        pageBean.setTotalPage(tc.intValue());
        //封装每页数据
        List<ArticleVo> list = articleCustomMapper.findNowNotes((currentPage - 1) * pageSize, pageSize);
        pageBean.setLists(list);
        return pageBean;
    }

    /**
     * 根据ID删除文章
     *
     * @param id
     */
    public void deleteArticleById(int id) {
        articleCustomMapper.deleteArticleById(id);
    }

    /**
     * 根据ID查找文章
     *
     * @param id
     * @return
     */
    public ArticleVo findByArticleId(int id) {
        return articleCustomMapper.findByArticleId(id);
    }

    /**
     * 更新文章点击数
     *
     * @param articleTitle 文章标题
     */
    public void updateArticleCount(String articleTitle) {
        articleCustomMapper.updateArticleCount(articleTitle);
    }

    /**
     * 搜索查询
     *
     * @param articleTitle
     * @return
     */
    public List<ArticleVo> findBySearch(String articleTitle) {
        return articleCustomMapper.findBySearch(articleTitle);
    }

    /**
     * 查找最近的10条文章记录
     *
     * @return
     */
    public List<ArticleEx> findListArticle() {
        return articleCustomMapper.findListArticle();
    }
}
