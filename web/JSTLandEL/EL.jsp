<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.lt.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL</title>
</head>
<body>
EL表达式算数运算<br/>
12+15=${12+15}<br/>
12-15=${12-15}<br/>
12*15=${12*15}<br/>
12/15=${12/15}<br/><!--除-->
12%15=${12%15}<br/><!--取余数-->

<hr/>

EL表达式关系运算<br/>
12==15${12==15}<br/>
12<15${12<15}<br/>
12>15${12>15}<br/>
12<=15${12<=15}<br/>
12>=15${12>=15}<br/>
12!=15${12!=15}<br/>

<hr/>

EL表达式关系运算(对应上面)<br/>
12==15${12 eq 15}<br/>
12<15${12 lt 15}<br/>
12>15${1 gt 15}<br/>
12<=15${12 le 15}<br/>
12>=15${12 ge 15}<br/>
12!=15${12 ne 15}<br/>

<hr/>

EL表达式逻辑运算<br/>
${12<15 && 12<15}<br/>
${12<15 and 12<15}<br/>
${12<15 || 12<15}<br/>
${12<15 or 12<15}<br/>
${!(12<15)}<br/>
${not(12<15)}<br/>

<hr/>

EL表达式empty运算符<br/>
<%
    List list = new ArrayList();
    list.add("Leonrad");
    pageContext.setAttribute("str", null);
    pageContext.setAttribute("list", list);
%>
str is empty : ${empty str}<br/>
list is empty : ${empty list}<br/>

<hr/>

EL表达式条件选择<br/>
12<15 : ${12<15 ? "Yes" : "No"}<br/>

<hr/>

EL表达式访问对象<br/>
<%
    pageContext.setAttribute("name", "Tom");
    session.setAttribute("age", "21");
    request.setAttribute("sex", "man");
    application.setAttribute("address", "China");
%>
name : ${name}<br/>
age : ${age}<br/>
sex : ${sex}<br/>
address : ${address}<br/>

<hr/>

EL表达式访问User类对象<br/>
<%
    User user = new User();
    user.setName("Leo");
    session.setAttribute("user", user);
%>
${user}<br/>
<!--实际是getName去掉get 的 name-->
${user.name}<br/>
${user["name"]}<br/>
</body>
</html>