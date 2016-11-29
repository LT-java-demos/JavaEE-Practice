<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Date</title>
</head>
<body>
<%
    out.print(new Date().toString()+"<br/>");
    out.print(new Date().toInstant());
    out.print(new Date().toLocaleString());
%>
</body>
</html>
