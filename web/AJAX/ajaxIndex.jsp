<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <title>AJAX</title>
    <script>

        var http = new XMLHttpRequest();
        function txtNum_onKeyUp(value) {
            <%--http.open('GET', '<%=path%>/ajaxDemo?value=' + value);--%>
            <%--http.send();--%>

            <%--http.open('POST', '<%=path%>/ajaxDemo',false);<!--第三个参数为false的时候是同步，true（默认）为异步-->--%>
            http.open('POST', '<%=path%>/ajaxDemo');<!--第三个参数为false的时候是同步，true（默认）为异步-->
            http.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            http.onreadystatechange = callback;
            http.send('value=' + value);

        }

        function callback() {
//            alert("回调含税被执行！")
            if(http.readyState == 4){
                var text = http.responseText;
                document.getElementById("divNumber").innerHTML = text;
            }
        }


    </script>
</head>
<body>
请输入数字 ： <input type="text" onkeyup="txtNum_onKeyUp(this.value)"><br/>
汉语的数字 ： <span id="divNumber"></span>

</body>
</html>
