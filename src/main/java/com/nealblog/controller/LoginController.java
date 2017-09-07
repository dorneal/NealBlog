package com.nealblog.controller;

import com.nealblog.po.AuthorEx;
import com.nealblog.po.AuthorVo;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 处理登录
 * </p>
 */
@Controller
public class LoginController {
    @Autowired
    private AuthorService authorService;

    //登录
    @RequestMapping("/login")
    public String login(HttpSession session, AuthorVo authorVo) {
        AuthorEx authorEx1 = authorService.login(authorVo);
        if (authorEx1 != null) {
            session.setAttribute("user", authorEx1);
            return "redirect:home.action";
        }
        return "redirect:home.action";
    }

    //退出
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:home.action";

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
