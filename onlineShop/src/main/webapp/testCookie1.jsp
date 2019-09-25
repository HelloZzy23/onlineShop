
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"  pageEncoding="UTF-8" %>
<html>
<head>
    <title>2</title>
</head>
<body>
<%--<%
    //定义一个变量：
    String str = "12";
    int number = Integer.parseInt(str);
%>

<%
    //将str存入Cookie
    Cookie cookie = new Cookie("number",str);
    //设置Cookie的存活期为600秒
    cookie.setMaxAge(6000);
    //将Cookie保存于客户端
    response.addCookie(cookie);
%>--%>
<a href="testCookie2.jsp">到达p2</a>
</body>
</html>
