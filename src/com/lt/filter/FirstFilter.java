package com.lt.filter;

import javax.servlet.*;
import java.io.IOException;

public class FirstFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("过滤器1请求");
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("过滤器1响应");
    }

    @Override
    public void destroy() {

    }
}
