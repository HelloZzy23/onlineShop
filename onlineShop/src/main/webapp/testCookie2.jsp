
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>2</title>
</head>
<body>
<%
    //从Cookie获得number
    String str = null;
    Cookie[] cookies = request.getCookies();
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("number")){
            str = cookies[i].getValue();
            break;
        }
    }

%>
获取到的cookie为
<p id="1" style="color: red;"></p>


<script>
    document.getElementById("1").innerHTML="<%=str%>";
</script>
</body>
</html>
