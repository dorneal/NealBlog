package com.nealblog.po;

import java.util.List;

/**
 * 文章类包装类
 */
public class ArticleVo {
    //    包装作者
    AuthorEx author;
    List<AuthorEx> authors;
    //    包装文章属性
    Category category;
    List<Category> categories;
    //    包装本表属性
    ArticleEx article;

    public AuthorEx getAuthor() {
        return author;
    }

    public void setAuthor(AuthorEx author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public ArticleEx getArticle() {
        return article;
    }

    public void setArticle(ArticleEx article) {
        this.article = article;
    }

    List<ArticleEx> articleExes;

    public List<ArticleEx> getArticleExes() {
        return articleExes;
    }

    public void setAuthors(List<AuthorEx> authors) {
        this.authors = authors;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public List<AuthorEx> getAuthors() {
        return authors;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public void setArticleExes(List<ArticleEx> articleExes) {
        this.articleExes = articleExes;
    }
}
