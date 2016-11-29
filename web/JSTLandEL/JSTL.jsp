<%@ page import="com.lt.model.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>JSTL</title>
</head>
<body>
<%
    User user = new User();
    pageContext.setAttribute("user", user);

    Map map = new HashMap();
    pageContext.setAttribute("map", map);
%>
<!--set-->
<c:set var="name" value="Leo" scope="session"/>
<c:set var="age" scope="page">
    12
</c:set>
<!--获得user对象并给user对象的name属性赋值为"Tom"，如果target获得的对象为null，JSTL会抛出异常。
    如果target的对象为JavaBean，那么property中的值为JavaBean的属性，value为property属性的值-->
<c:set target="${user}" property="name" value="Tom"/>
<c:set var="code" value="<h1>Hello World</h1>"/>

<!--out-->
name : <c:out value="${name}"/><br/>
age : <c:out value="${age}"/><br/>
user.name : <c:out value="${user.name}"/><br/>
address : <c:out value="${address}" default="null"/><br/><!--没有值得时候设置默认值-->
Code : <c:out value="${code}"/><br/>
Code with escapeXml false: <c:out value="${code}" escapeXml="false"/><!--escapeXml为false时变量中的HTML会被浏览器解析-->
<hr/>

<!--remove-->
<c:remove var="name" scope="session"/>

<!--if-->
<c:if test="${12>10}" var="result" scope="page">
    12 大于 10 test的结果为 : ${result}
</c:if><br/>
<c:if test="${5>1}"/>
<hr/>

<!--choose、when、otherwise实现of/else-->
<c:set var="name" value="Tom"/>
<c:choose>
    <c:when test="${name eq 'Tom'}">
        Tom say Hi!
    </c:when>
    <c:when test="${name eq 'Leo'}">
        Leo say Hi!
    </c:when>
    <c:otherwise>
        no people
    </c:otherwise>
</c:choose>
<hr/>

<!--forEach-->
<%
    Map<String, String> m = new HashMap<String, String>();
    m.put("key1", "value1");
    m.put("key2", "value2");
    m.put("key3", "value3");
    List<String> list = new ArrayList<String>();
    list.add("list1");
    list.add("list2");
    list.add("list3");
    String[] strs = {"str1", "str2", "str3"};
    pageContext.setAttribute("list", list);
    pageContext.setAttribute("strs", strs);
    pageContext.setAttribute("m", m);
%>
<c:forEach var="str" items="${strs}" varStatus="status">
    ${status.count}
    ${str}<br/>
</c:forEach>

<c:forEach var="listItem" items="${list}" begin="0" end="1">
    ${listItem}<br/>
</c:forEach>

<c:forEach var="mapItem" items="${m}">
    ${mapItem.key} : ${mapItem.value}<br/>
</c:forEach>
<hr/>

<!--formatNumber-->
格式化货币 ：
<fmt:formatNumber value="123456789" type="currency" currencySymbol="$" maxFractionDigits="3"/><br/>
格式化数字 ：
<fmt:formatNumber value="123456.1" type="number" minFractionDigits="3"/><br/>
格式化百分比 ：
<fmt:formatNumber type="percent">
    0.98
</fmt:formatNumber><br/>
<hr/>

<!--formatDate-->
<fmt:formatDate value="<%=new java.util.Date()%>" pattern="yyyy 年 MM 月 dd 日"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>" dateStyle="full"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>" dateStyle="short"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>" dateStyle="medium"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>" dateStyle="long"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>"/><br/>
<fmt:formatDate value="<%=new java.util.Date()%>" type="time"/><br/>
</body>
</html>
