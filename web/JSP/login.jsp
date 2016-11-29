<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
<%
    String name = request.getParameter("userName");
    String pwd = request.getParameter("userPwd");
    if ("Leonard".equals(name) && "123".equals(pwd)) {
        //请求转发
        request.setAttribute("name", name);
        RequestDispatcher rd = request.getRequestDispatcher("./success.jsp");
        rd.forward(request, response);

        //重定向
//        response.sendRedirect("./success.jsp");

    } else {
        out.print("密码错误");
    }
%>
</body>
</html>
