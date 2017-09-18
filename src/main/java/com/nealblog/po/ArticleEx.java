package com.nealblog.po;

/**
 * 文章类扩展类
 */
public class ArticleEx extends Article {
    private String easycontent;
    private String articletime;

    public String getArticletime() {
        return articletime;
    }

    public void setArticletime(String articletime) {
        this.articletime = articletime;
    }

    public String getEasycontent() {
        return easycontent;
    }

    public void setEasycontent(String easycontent) {
        this.easycontent = easycontent;
    }
}
