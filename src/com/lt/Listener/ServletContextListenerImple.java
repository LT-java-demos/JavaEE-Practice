package com.lt.Listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletContextListenerImple implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        int num = 0;
        ServletContext application = servletContextEvent.getServletContext();
        application.setAttribute("onLineNum", num);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext application = servletContextEvent.getServletContext();
        application.removeAttribute("onLineNum");
    }
}
