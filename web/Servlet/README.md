#Servlet

>在一个Web容器中Servlet的实例只有一个，每个请求都在单独的一个线程中运行

|JSP内置对象|Servlet中对象|
|---|---|
|out|PrintWriter|
|request|HttpServletRequest|
|response|HttpServletResponse|
|session|HttpSession|
|application|ServletContext|
|config|ServletConfig|

>采用 `web.xml` 配置 `Servlet` 的时候 `url-pattern` 需要注意！！！

```
    <servlet>
        <servlet-name>Login</servlet-name>
        <servlet-class>com.lt.servlet.LoginServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>Login</servlet-name>
        <url-pattern>/Servlet/loginServlet</url-pattern>
    </servlet-mapping>

