<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<c:if test="${param.error eq '001'}">
    <div style="color: red;">用户名或密码错误</div>
</c:if>

<form action="loginServlet" method="post">
    username:<input type="text" name="userName"/><br/>
    password:<input type="password" name="userPwd"/><br/>
    <input type="submit" value="登录"/>
</form>
</body>
</html>
