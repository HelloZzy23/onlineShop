<%@ page import="com.pojo.Member" %>
<%@ page import="java.util.HashMap" %><%--引入jsp标准标签库JSTL--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + appPath;
%>
<html>
<head>

</head>
<body>

<%
    //定义一个变量：memName,用来保存当前用户的名称
    String memName=(String)request.getAttribute("memName");
    //将memName存入Cookie
    Cookie cookie = new Cookie("memName",memName);
    //设置Cookie的存活期为 单位：秒
    cookie.setMaxAge(60);
    //将Cookie保存于客户端
    response.addCookie(cookie);

    //定义一个变量count,用来保存购物车的数量
    String count=(String)request.getAttribute("count1");
    Cookie cookie1=new Cookie("count",count);
    cookie1.setMaxAge(60);
    response.addCookie(cookie1);

%>

 <jsp:include page="/index.jsp"/>

<script>
    <%--修navigation.jsp中相关信息--%>

   document.getElementById("pleaseLogin").innerHTML="${member.memName}";

    //改变 注册 超链接的文字
    document.getElementById("regist").innerHTML="退出";
    var href_regist=document.getElementById("regist");
    href_regist.href="index.jsp";


    document.getElementById("count").innerHTML="${count1}";

    //改变 购物车 的连接地址
    var shopCart=document.getElementById("shopCart1");
    shopCart.href="<%=appPath%>/shopCart/<%=memName%>";

</script>

</body>
</html>
