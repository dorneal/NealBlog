package com.nealblog.po;

import java.util.List;

/**
 * <p>
 *     Author包装类
 * </p>
 */
public class AuthorVo {
    private Author author;
    private AuthorEx authorEx;
    private List<AuthorEx> authorExList;

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public AuthorEx getAuthorEx() {
        return authorEx;
    }

    public void setAuthorEx(AuthorEx authorEx) {
        this.authorEx = authorEx;
    }

    public List<AuthorEx> getAuthorExList() {
        return authorExList;
    }

    public void setAuthorExList(List<AuthorEx> authorExList) {
        this.authorExList = authorExList;
    }
}
