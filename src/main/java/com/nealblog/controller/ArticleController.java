package com.nealblog.controller;

import com.nealblog.po.ArticleEx;
import com.nealblog.po.ArticleVo;
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
     * 查询显示左边简要文章
     * @param request
     * @return
     */
    @RequestMapping("/nowArticle")
    public String nowArticle(HttpServletRequest request){
        List<ArticleEx> nowArticleData = articleService.findNowArticle();
        request.setAttribute("nowArticleData", nowArticleData);
        return "forward:/articleTitle.action";
    }

    /**
     * 根据所点击的文章标题，查找正文显示
     */
    @RequestMapping("/articleContext")
    public String articleContext(HttpServletRequest request) {
        //获取所点击的文章标题
        String articleTitle = request.getParameter("ArticleTitle");
        List<ArticleVo> articleData = articleService.findArticleContent(articleTitle);
        request.setAttribute("articleData",articleData);
        return "forward:/articleTitle.action";
    }


    //返回个人文章页面
//    @RequestMapping("/article")
//    public String article() {
//    return "main/article";
//}
}
