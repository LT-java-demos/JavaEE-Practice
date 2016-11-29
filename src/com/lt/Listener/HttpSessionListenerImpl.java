package com.lt.Listener;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class HttpSessionListenerImpl implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        ServletContext application = httpSessionEvent.getSession().getServletContext();
        Integer num = (Integer) application.getAttribute("onLineNum");
        if (num != null) {
            int count = num;
            count = count + 1;
            application.setAttribute("onLineNum", count);
        } else {
            application.setAttribute("onLineNum", 1);
        }
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        ServletContext application = httpSessionEvent.getSession().getServletContext();
        Integer num = (Integer) application.getAttribute("onLineNum");
        int count = num;
        count = count - 1;
        application.setAttribute("onLineNum", count);
    }
}
