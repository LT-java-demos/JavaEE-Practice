#JSP

- JSP内置对象
- JSP指令
- 页面跳转

##JSP内置对象

JSP共有9个内置对象:
- request
- response
- session
- out
- exception
- page
- pageContext
- application
- config

###application
application代表一个web应用的上下文，所有用户都可以访问application中存放的对象，所以application对于所有用户来说相当于是一个公共的存储区域。


###pageContext
pageContext对象提供了访问其他内置对象的方法，并提供了只在当前页进行访问的存储空间。


###exception
exception对象代表了JSP页面在运行时的异常，该对象只有在错误页面中才可以使用。错误页面指的是在JSP的page指令中指定属性isErrorPage的值为true的页面。在普通的JSP页面的page指令中，将errorPage属性指定到一个错误页，如果该JSP发生了错误，那么跳转到指定的错误页。

|对象名称|作用范围|
|------|------|
|pageContext|在本JSP页面中|
|request|在一次请求和一次响应之间|
|session|在一个访问会话中|
|application|在Web应用程序运行期间|

---------------------
##JSP指令
###include指令
include指令用于在JSP页面中包含一个页面，该页面可以是JSP页面，也可以是HTML页面。

```jsp
<%@include file="Date.jsp" %>
```

###页面跳转
- 请求转发
- 重定向

```jsp
testIndex.jsp
login.jsp
success.jsp
```