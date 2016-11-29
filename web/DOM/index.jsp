<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script>
        function a() {
//            alert(document.getElementById("userName"));
//            alert(document.getElementById("userName").value);
            var t = document.getElementById("test");
            var btn = document.createElement("input");
            btn.setAttribute("type", "button");
            btn.setAttribute("value", "testBtn");
            t.appendChild(btn);
        }
    </script>
</head>
<body>
<input type="text" id="userName">
<input type="button" onclick="a()" value="确定">
<div id="test">

</div>
</body>
</html>
