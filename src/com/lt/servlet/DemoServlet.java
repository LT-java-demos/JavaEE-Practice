package com.lt.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DemoServlet", urlPatterns = "/ajaxDemo")
public class DemoServlet extends HttpServlet {
    final static String[] NUMBERS = "零,一,二,三,四,五,六,七,八,九".split(",");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            Thread.sleep(2000);
//        } catch (InterruptedException e) {
//            e.printStackTrace();
//        }
        //设置回调头部，特别注意字符集设置
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String value = request.getParameter("value");
        for (int i = 0; i < value.length(); i++) {
            int k = Integer.parseInt("" + value.charAt(i));
//            System.out.println(NUMBERS[k]);

            //通过输出流输出到客户端
            out.print(NUMBERS[k]);
        }
//        System.out.println();
        out.flush();
        out.close();
    }
}
