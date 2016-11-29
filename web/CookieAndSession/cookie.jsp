<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>make a cookie</title>
</head>
<body>
<%
    Cookie cookie = new Cookie("UserName", "Leonard");
    cookie.setMaxAge(60 * 10);
    response.addCookie(cookie);
%>

<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if ("UserName".equals(c.getName())) {
                out.print(c.getValue());
                break;
            }
        }
    }
%>
</body>
</html>
