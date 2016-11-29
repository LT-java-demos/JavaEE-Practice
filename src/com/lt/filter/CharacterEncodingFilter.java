package com.lt.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {
    private String characterEncoding = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //方法3
        characterEncoding = filterConfig.getInitParameter("characterEncoding");
        if (characterEncoding == null) {
            characterEncoding = "UTF-8";
            System.out.println("!!!:" + characterEncoding);
        } else {
            System.out.println("OK:" + characterEncoding);
        }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //方法一
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        System.out.println("-------------");
        filterChain.doFilter(req, resp);
    }

    @Override
    public void destroy() {

    }
}
