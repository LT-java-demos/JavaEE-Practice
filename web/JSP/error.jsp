<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>errorPage</title>
</head>
<body>
<%
    out.print("异常内容：" + exception.toString());
%>
</body>
</html>
