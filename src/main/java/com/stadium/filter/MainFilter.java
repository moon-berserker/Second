package com.stadium.filter;

import com.stadium.entity.User;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class MainFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {

        String url = req.getRequestURL().toString();
        if(!url.contains("/static/") && !url.endsWith("login") && !url.endsWith("register")){
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("user");
        }
        chain.doFilter(req, res);
    }
}
