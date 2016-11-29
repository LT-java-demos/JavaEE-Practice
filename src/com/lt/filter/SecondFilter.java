package com.lt.filter;

import javax.servlet.*;
import java.io.IOException;

public class SecondFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("过滤器2请求");
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("过滤器2响应");
    }

    @Override
    public void destroy() {

    }
}
