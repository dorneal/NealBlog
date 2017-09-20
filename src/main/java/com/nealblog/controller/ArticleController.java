package com.nealblog.controller;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
import com.nealblog.po.PageBean;
import com.nealblog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 文章
 *
 * @author Neal
 */
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    /**
     * 显示文章标题在网页目录树
     *
     * @param request
     * @return 回到页面
     */
    @RequestMapping("/articleTitle")
    public String articleTitle(HttpServletRequest request) {
        List<ArticleEx> articleTitle = articleService.findArticleTitle();
        request.setAttribute("articleTitle", articleTitle);
        return "main/article";
    }

    /**
     * 查询显示右边简要文章，分页显示
     *
     * @param request
     * @return
     */
    @RequestMapping("/nowArticle")
    public String nowArticle(HttpServletRequest request) {
        //获取当前网页页码
        String currentPage = request.getParameter("currentPage");
        PageBean<ArticleVo> pageBean;
        //判断是否为第一页（第一页取不到值，所以为空）
        if (currentPage == null) {
            pageBean = articleService.findPageData(1);
        } else {
            pageBean = articleService.findPageData(Integer.valueOf(currentPage));
        }
        request.setAttribute("pageBean", pageBean);
        return "forward:/articleTitle";
    }

    @RequestMapping("/nowNote")
    public String nowNote(HttpServletRequest request) {
        //获取当前网页页码
        String currentPage = request.getParameter("currentPage");
        PageBean<ArticleVo> pageBean;
        //判断是否为第一页（第一页取不到值，所以为空）
        if (currentPage == null) {
            pageBean = articleService.findPageNote(1);
        } else {
            pageBean = articleService.findPageNote(Integer.valueOf(currentPage));
        }
        request.setAttribute("pageBean", pageBean);
        return "forward:/note";
    }

    /**
     * 根据所点击的文章标题，查找正文显示
     */
    @RequestMapping("/articleContext")
    public String articleContext(HttpServletRequest request) {
        //获取所点击的文章标题
        String articleTitle = request.getParameter("ArticleTitle");
        ArticleVo articleData = articleService.findArticleContent(articleTitle);
        //更新点击数
        articleService.updateArticleCount(articleTitle);
        request.setAttribute("articleData", articleData);
        return "forward:/articleTitle";
    }

    /**
     * 点击查看笔记原文
     *
     * @param request
     * @return
     */
    @RequestMapping("/noteContext")
    public String noteContext(HttpServletRequest request) {
        //获取所点击的文章标题
        String articleTitle = request.getParameter("ArticleTitle");
        ArticleVo articleData = articleService.findArticleContent(articleTitle);
        //更新点击数
        articleService.updateArticleCount(articleTitle);
        request.setAttribute("articleData", articleData);
        return "forward:/note";
    }

    /**
     * 站内搜索
     *
     * @param request
     * @return
     */
    @RequestMapping("/articleSearch")
    public String articleSearch(HttpServletRequest request) {
        String articleTitle = request.getParameter("inputContent");
        //如果输入框为空，则直接返回当前页面
        if (articleTitle == null || "".equals(articleTitle)) {
            return "forward:/nowArticle";
        }
        List<ArticleVo> searchResult = articleService.findBySearch(articleTitle);
        //如果查询结果为空
        if (searchResult == null || searchResult.size() == 0) {
            request.setAttribute("titleResult", articleTitle);
            //判断变量
            request.setAttribute("boolResult", "have");
            return "forward:/articleTitle";
        }
        request.setAttribute("searchResult", searchResult);
        return "forward:/articleTitle";
    }


    /**
     * 站内搜索
     *
     * @param request
     * @return
     */
    @RequestMapping("/noteSearch")
    public String noteSearch(HttpServletRequest request) {
        String articleTitle = request.getParameter("inputContent");
        //如果输入框为空，则直接返回当前页面
        if (articleTitle == null || "".equals(articleTitle)) {
            return "forward:/nowNote";
        }
        List<ArticleVo> searchResult = articleService.findBySearch2(articleTitle);
        //如果查询结果为空
        if (searchResult == null || searchResult.size() == 0) {
            request.setAttribute("titleResult", articleTitle);
            //判断变量
            request.setAttribute("boolResult", "have");
            return "forward:/note";
        }
        request.setAttribute("searchResult", searchResult);
        return "forward:/note";
    }

    //返回主页
    @RequestMapping("/home")
    public String home() {
        return "index";
    }

    //返回笔记页面
    @RequestMapping("/note")
    public String note() {
        return "main/note/note-catalog";
    }

    //返回关于我页面
    @RequestMapping("/aboutMe")
    public String aboutMe() {
        return "main/aboutMe";
    }

    //返回留言页面
    @RequestMapping("/comment")
    public String comment() {
        return "main/comment";
    }
}
