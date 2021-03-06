package com.nealblog.service.impl;

import com.nealblog.mapper.ArticleCustomMapper;
import com.nealblog.po.Article;
import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.po.PageBean;
import com.nealblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 文章service实现类
 *
 * @author neal
 */
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleCustomMapper articleCustomMapper;

    /**
     * 查找文章标题，用于显示在页面目录树
     *
     * @return
     */
    @Override
    public List<ArticleEx> findArticleTitle() {
        return articleCustomMapper.findArticleTitle();
    }

    /**
     * 查找正文主要内容
     *
     * @return
     */
    @Override
    public ArticleVo findArticleContent(String articleTitle) {
        return articleCustomMapper.findArticleContent(articleTitle);
    }

    /**
     * 查找简要信息，用于显示在页面介绍
     *
     * @return
     */
    @Override
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
    @Override
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
    @Override
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
    @Override
    public PageBean<ArticleVo> findByPageNote(int currentPage) {
        PageBean<ArticleVo> pageBean = new PageBean<ArticleVo>();
        //封装当前页
        pageBean.setCurrPage(currentPage);
        //封装页面大小
        int pageSize = 20;
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
    @Override
    public void deleteArticleById(int id) {
        articleCustomMapper.deleteArticleById(id);
    }

    /**
     * 根据ID查找文章
     *
     * @param id
     * @return
     */
    @Override
    public ArticleVo findByArticleId(int id) {
        return articleCustomMapper.findByArticleId(id);
    }

    /**
     * 博主后台搜索文章
     *
     * @param articletitle
     * @return
     */
    @Override
    public List<ArticleVo> findByArticleTitleSearch(String articletitle) {
        return articleCustomMapper.findByArticleTitleSearch(articletitle);
    }

    /**
     * 博主后台搜索笔记
     *
     * @param articletitle
     * @return
     */
    @Override
    public List<ArticleVo> findByNoteTitleSearch(String articletitle) {
        return articleCustomMapper.findByNoteTitleSearch(articletitle);
    }

    /**
     * 根据id更新文章
     *
     * @param articleEx
     */
    @Override
    public void updateArticleByArticleId(ArticleEx articleEx) {
        articleCustomMapper.updateArticleByArticleId(articleEx);
    }

    /**
     * 文章的发布
     *
     * @param articleEx
     */
    @Override
    public void insertArticle(ArticleEx articleEx) {
        articleCustomMapper.insertArticle(articleEx);
    }

    /**
     * 根据文章标题查找，是否重复，用于发布查重
     *
     * @param articletitle
     * @return
     */
    @Override
    public ArticleEx findByTitle(String articletitle) {
        return articleCustomMapper.findByTitle(articletitle);
    }

    /**
     * 用于更新查重
     *
     * @param articleEx
     * @return
     */
    @Override
    public ArticleEx findByTitleAndId(ArticleEx articleEx) {
        return articleCustomMapper.findByTitleAndId(articleEx);
    }

    /**
     * 笔记左侧栏的点击事件
     *
     * @param articletitle
     * @return
     */
    @Override
    public List<ArticleVo> findByNoteTitle(String articletitle) {
        return articleCustomMapper.findByNoteTitle(articletitle);
    }

    /**
     * 更新文章点击数
     *
     * @param articleTitle 文章标题
     */
    @Override
    public void updateArticleCount(String articleTitle) {
        articleCustomMapper.updateArticleCount(articleTitle);
    }

    /**
     * 搜索查询文章
     *
     * @param articleTitle
     * @return
     */
    @Override
    public List<ArticleVo> findBySearch(String articleTitle) {
        return articleCustomMapper.findBySearch(articleTitle);
    }

    /**
     * 搜索查询笔记
     *
     * @param articleTitle
     * @return
     */
    @Override
    public List<ArticleVo> findBySearch2(String articleTitle) {
        return articleCustomMapper.findBySearch2(articleTitle);
    }

    /**
     * 查找最近的10条文章记录
     *
     * @return
     */
    @Override
    public List<ArticleEx> findListArticle() {
        return articleCustomMapper.findListArticle();
    }
}
