<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login success</title>
</head>
<body>
<%
    String name = (String) request.getAttribute("name");
%>
登录成功:<%=name%>
</body>
</html>
