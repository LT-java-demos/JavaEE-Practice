package com.lt.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String userName = req.getParameter("userName");
        String userPwd = req.getParameter("userPwd");
        if ("Leonard".equals(userName) && "123".equals(userPwd)) {
            HttpSession session = req.getSession();
            session.setAttribute("userName", userName);
            resp.sendRedirect("welcome.jsp");
        } else {
            resp.sendRedirect("login.jsp?error=001");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
