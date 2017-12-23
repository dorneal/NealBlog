package com.nealblog.controller;

import com.nealblog.po.*;
import com.nealblog.service.ArticleService;
import com.nealblog.service.AuthorService;
import com.nealblog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 后台管理
 *
 * @author Neal
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ArticleService articleService;
    @Autowired
    private AuthorService authorService;

    /**
     * 最近发布前10条文章记录
     *
     * @return List
     */
    public List<ArticleEx> findListArticle() {
        return articleService.findListArticle();
    }

    /**
     * 所有类别记录
     *
     * @return List
     */
    public List<Category> findListCategory() {
        return categoryService.findListCategory();
    }

    /**
     * 所有作者记录
     *
     * @return List
     */
    public List<Author> findListAuthor() {
        return authorService.findListAuthor();
    }

    /**
     * 统一查询，显示到页面
     */
    @RequestMapping("/showList")
    public String showList(HttpServletRequest request) {
        //先对作者发布数量进行更新
        authorService.updatePublishCount(1);
        authorService.updatePublishCount(2);
        authorService.updatePublishCount(3);
        //再查询
        List<ArticleEx> listByArticle = findListArticle();
        List<Category> listByCategory = findListCategory();
        List<Author> listByAuthor = findListAuthor();
        request.setAttribute("listByArticle", listByArticle);
        request.setAttribute("listByCategory", listByCategory);
        request.setAttribute("listByAuthor", listByAuthor);
        return "manager";
    }

    /**
     * 分页显示文章管理
     *
     * @param request request
     * @return String
     */
    @RequestMapping("/managerByArticle")
    public String managerByArticle(HttpServletRequest request) {
        //获取当前网页页码
        String currentPage = request.getParameter("currentPage");
        PageBean<ArticleVo> pageBean;
        //判断是否为第一页（第一页取不到值，所以为空）
        if (currentPage == null) {
            pageBean = articleService.findByPageArticle(1);
        } else {
            pageBean = articleService.findByPageArticle(Integer.valueOf(currentPage));
        }
        request.setAttribute("pageBeanByArticle", pageBean);
        return "manager/articlemanager";
    }

    /**
     * 分页处理笔记数据
     *
     * @param request request
     * @return String
     */
    @RequestMapping("/managerByNote")
    public String managerByNote(HttpServletRequest request) {
        //获取当前网页页码
        String currentPage = request.getParameter("currentPage");
        PageBean<ArticleVo> pageBean;
        //判断是否为第一页（第一页取不到值，所以为空）
        if (currentPage == null) {
            pageBean = articleService.findByPageNote(1);
        } else {
            pageBean = articleService.findByPageNote(Integer.valueOf(currentPage));
        }
        request.setAttribute("pageBeanByNote", pageBean);
        return "manager/notemanager";
    }

    /**
     * 根据ID删除文章
     *
     * @param articleid articleid
     * @return String
     */
    @RequestMapping("/deleteArticle")
    public String deleteArticle(int articleid) {
        articleService.deleteArticleById(articleid);
        return "redirect:/manager/managerByArticle";
    }

    /**
     * 根据ID删除笔记
     *
     * @param articleid articleid
     * @return 返回到笔记页面
     */
    @RequestMapping("/deleteNote")
    public String deleteNote(int articleid) {
        articleService.deleteArticleById(articleid);
        return "redirect:/manager/managerByNote";
    }

    /**
     * 跳转到文章发布页面
     * 1.先查询作者用于显示下拉列表
     * 2.查询类别用于显示下拉列表
     *
     * @return String
     */
    @RequestMapping("/articlePublish")
    public String articlePublish(HttpServletRequest request) {
        List<Category> listByCategory = findListCategory();
        List<Author> listByAuthor = findListAuthor();
        request.setAttribute("listByCategory", listByCategory);
        request.setAttribute("listByAuthor", listByAuthor);
        return "manager/articlepublish";
    }

    /**
     * 跳转到文章发布页面
     * 1.先查询作者用于显示下拉列表
     * 2.查询类别用于显示下拉列表
     *
     * @return String
     */
    @RequestMapping("/notePublish")
    public String notePublish(HttpServletRequest request) {
        List<Category> listByCategory = findListCategory();
        List<Author> listByAuthor = findListAuthor();
        request.setAttribute("listByCategory", listByCategory);
        request.setAttribute("listByAuthor", listByAuthor);
        return "manager/notepublish";
    }

    /**
     * 根据ID查询
     *
     * @param request   request
     * @param articleid articleid
     * @return String
     */
    @RequestMapping("/findByArticleId")
    public String findByArticleId(HttpServletRequest request, int articleid) {
        ArticleVo articleVoList = articleService.findByArticleId(articleid);
        request.setAttribute("articleVoList", articleVoList);
        return "manager/editarticle";
    }

    /**
     * 用于处理后台搜索处理(文章)
     *
     * @param request
     * @param articletitle
     * @return
     */
    @RequestMapping("/findByArticleSearch")
    public String findByArticleSearch(HttpServletRequest request, String articletitle) {
        List<ArticleVo> articleVos = articleService.findByArticleTitleSearch(articletitle);
        request.setAttribute("articleVos", articleVos);
        return "manager/articlemanager";
    }

    /**
     * 用于处理后台搜索处理(笔记)
     *
     * @param request      request
     * @param articletitle articletitle
     * @return String
     */
    @RequestMapping("/findByNoteSearch")
    public String findByNoteSearch(HttpServletRequest request, String articletitle) {
        List<ArticleVo> articleVos = articleService.findByNoteTitleSearch(articletitle);
        request.setAttribute("articleVos", articleVos);
        return "manager/notemanager";
    }

    /**
     * 根据ID更新文章
     *
     * @param articleEx
     * @return
     */
    @RequestMapping("updateArticle")
    public String updateArticle(HttpServletRequest request, ArticleEx articleEx) {
        //判断文章标题是否已经拥有
        ArticleEx articleEx1 = articleService.findByTitleAndId(articleEx);
        if (articleEx1 != null) {
            request.setAttribute("articleTitleRepeatError", "标题已有，请换一个");
            return "manager/editarticle";
        }
        articleService.updateArticleByArticleId(articleEx);
        //如果文章类型是笔记，就跳转到笔记管理页面
        if (articleEx.getCategoryid() == 2) {
            return "redirect:/manager/managerByNote";
        }
        return "redirect:/manager/managerByArticle";
    }

    /**
     * 发布文章或者笔记
     *
     * @param request
     * @param articleEx
     * @return
     */
    @RequestMapping("/insertArticle")
    public String insertArticle(HttpServletRequest request, ArticleEx articleEx) {
        //判断文章标题是否已经拥有
        ArticleEx articleEx1 = articleService.findByTitle(articleEx.getArticletitle());
        if (articleEx1 != null) {
            request.setAttribute("articleTitleRepeatError", "标题已有，请换一个");
            if (articleEx.getCategoryid() == 2) {
                return "forward:/manager/notepublish";
            }
            return "forward:/manager/articlePublish";
        }
        articleService.insertArticle(articleEx);
        //如果文章类型是笔记，就跳转到笔记管理页面
        if (articleEx.getCategoryid() == 2) {
            return "redirect:/manager/managerByNote";
        }
        return "redirect:/manager/managerByArticle";
    }
}
