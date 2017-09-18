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
     * @return
     */
    public List<ArticleEx> findListArticle() {
        return articleService.findListArticle();
    }

    /**
     * 所有类别记录
     *
     * @return
     */
    public List<Category> findListCategory() {
        return categoryService.findListCategory();
    }

    /**
     * 所有作者记录
     *
     * @return
     */
    public List<Author> findListAuthor() {
        return authorService.findListAuthor();
    }

    /**
     * 统一查询，显示到页面
     */
    @RequestMapping("/showList")
    public String showList(HttpServletRequest request) {
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
     * @param request
     * @return
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
     * @param request
     * @return
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
     * @param articleid
     * @return
     */
    @RequestMapping("/deleteArticle")
    public String deleteArticle(int articleid) {
        articleService.deleteArticleById(articleid);
        return "redirect:/manager/managerByArticle";
    }

    /**
     * 根据ID删除笔记
     *
     * @param articleid
     * @return 返回到笔记页面
     */
    @RequestMapping("/deleteNote")
    public String deleteNote(int articleid) {
        articleService.deleteArticleById(articleid);
        return "redirect:/manager/managerByNote";
    }
}
