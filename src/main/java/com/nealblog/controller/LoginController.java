package com.nealblog.controller;

import com.nealblog.po.Author;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * <p>
 * 处理登录
 * </p>
 * @author neal
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private AuthorService authorService;


    /**
     * 跳转到博主登录页面
     *
     * @return String
     */
    @RequestMapping("/toLoginPage")
    public String toLoginPage() {
        return "login";
    }

    /**
     * 登录处理,成功就跳转到显示action，不成功就重新定位到当前页面
     *
     * @param session session
     * @return String
     */
    @RequestMapping("/login")
    public String login(HttpSession session, Author author) {
        Author author1 = authorService.login(author);
        if (author1 != null) {
            session.setAttribute("user", author1);
            return "redirect:/manager/showList";
        }
        return "redirect:/toLoginPage";
    }

    /**
     * 退出
     *
     * @param session session
     * @return String
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/home";
    }
}
