<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    int count = 3;
    String userName = request.getParameter("userName");
    String userPwd = request.getParameter("userPwd");


    Integer num = (Integer) session.getAttribute("errorCount");
    if (num == null) {
        num = 0;
    }
    if (num > count) {
        out.print("错误次数已经达到上限！");
    } else {
        if ("Leonard".equals(userName) && "123".equals(userPwd)) {
            Cookie usernameCookie = new Cookie("userName", userName);
            Cookie userPwdCookie = new Cookie("userPwd", userPwd);
            response.addCookie(usernameCookie);
            response.addCookie(userPwdCookie);
            out.print("欢迎：" + userName);
        } else {
            out.print("用户名或密码错误！");
            session.setAttribute("errCount", ++num);
            out.print("您还有 " + (count - num) + " 次机会！");
        }
    }
%>
</body>
</html>
