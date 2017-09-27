package com.nealblog.interceptor;


import com.nealblog.po.Author;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录拦截器，未登录，则拦截，登录则放行
 *
 * @author Neal
 */
public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        Author user = (Author) request.getSession().getAttribute("user");
        if (user == null) {
            System.out.println("未登录");
            //空的，跳到重新登录方法
            response.sendRedirect(request.getContextPath() + "/login/toLoginPage");
            return false;
        }
        //不为空，放行
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle");
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("afterCompletion");
    }
}
