<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application</title>
</head>
<body>
<%
    String path = application.getRealPath("");
    out.print("当前程序在服务器中存放的路径为：" + path + "<br/>");
    application.setAttribute("age", "18");
    String age = (String) application.getAttribute("age");
    out.print("年龄为：" + age + "<br/>");

%>
</body>
</html>
