<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
<%
    String sessionId = session.getId();
    out.print("SessionId:" + sessionId + "<br/>");


    if (session.isNew()) {
        out.print("这是一个新的Session<br/>");
    } else {
        out.print("这是一个老的Session<br/>");
    }


    Date createDate = new Date(session.getCreationTime());
    out.print("session 创建时间为：" + createDate + "<br/>");


    Date lastAccessDate = new Date(session.getLastAccessedTime());
    out.print("session 最后访问的时间：" + lastAccessDate + "<br/>");


    out.print("Session 最大的请求间隔默认为：" + session.getMaxInactiveInterval() + "<br/>");

//    session.setMaxInactiveInterval(60 * 10);
//    out.print("Session 最大的请求间隔默认为：" + session.getMaxInactiveInterval() + "<br/>");

    session.setAttribute("username", "Leonard");
    String username = (String) session.getAttribute("username");
    out.print("Session 中 name 的值为：" + username + "<br/>");


    session.removeAttribute("username");
    out.print(session.getAttribute("username"));  //null

    session.invalidate();//强制session过期

%>
</body>
</html>
