package com.nealblog.controller;

import com.nealblog.po.AuthorEx;
import com.nealblog.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * <p>
 *     处理登录
 * </p>
 */
@Controller
public class LoginController {
    @Autowired
    private AuthorService authorService;

    @RequestMapping("/login")
    public String login(HttpSession session, AuthorEx authorEx){
        AuthorEx authorEx1 = authorService.login(authorEx);
        if(authorEx1!=null){
            session.setAttribute("user",authorEx1);
            return "redirect:index.jsp";
        }
        return "redirect:index.jsp";
    }
}
