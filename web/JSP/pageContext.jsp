<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext</title>
</head>
<body>
<%
    pageContext.setAttribute("name", "Leonard");
    String scope = (String) pageContext.getAttribute("name");
    out.print("pageContext中值为：" + scope + "<br/>");


    //向request空间存储对象，pageContext内置对象中含有很多的常量代表不同的空间，比如pageContext.REQUEST_SCOPE就代表request空间
    pageContext.setAttribute("name", "Tom", pageContext.REQUEST_SCOPE);
    //从指定空间中获取存储对象
    scope = (String) pageContext.getAttribute("name", pageContext.REQUEST_SCOPE);
    out.print("request中值为：" + scope + "<br/>");

    pageContext.setAttribute("age", "21", pageContext.SESSION_SCOPE);
    String age = (String) pageContext.getAttribute("age", pageContext.SESSION_SCOPE);
    out.print("从pageContext request session application 找的值为：" + age + "<br/>");


    pageContext.removeAttribute("name");
    pageContext.removeAttribute("name", pageContext.REQUEST_SCOPE);
    pageContext.removeAttribute("name", pageContext.SESSION_SCOPE);

%>
</body>
</html>
