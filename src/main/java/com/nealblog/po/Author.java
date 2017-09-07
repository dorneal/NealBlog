package com.nealblog.po;

import java.util.Date;

public class Author {
    private Integer authorid;

    private String authorname;

    private String authorpassword;

    private Integer publishcount;

    private Date publishtime;

    public Integer getAuthorid() {
        return authorid;
    }

    public void setAuthorid(Integer authorid) {
        this.authorid = authorid;
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname == null ? null : authorname.trim();
    }

    public String getAuthorpassword() {
        return authorpassword;
    }

    public void setAuthorpassword(String authorpassword) {
        this.authorpassword = authorpassword == null ? null : authorpassword.trim();
    }

    public Integer getPublishcount() {
        return publishcount;
    }

    public void setPublishcount(Integer publishcount) {
        this.publishcount = publishcount;
    }

    public Date getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(Date publishtime) {
        this.publishtime = publishtime;
    }
}