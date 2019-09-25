
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String appPath=request.getContextPath();
%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery-3.3.1.min.js"></script>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!--引入js文件-->
    <script type="text/javascript" src="myjs/commodityClassfication.js"></script>

    <style>
        body{
            font-size: 12px;
            font-family: Arial;
        }
        a{
            color:#999;
        }
        .redColor{
            color: #C40000 !important;
        }
        nav.top{
            background-color: #f2f2f2;
            padding-top: 5px;
            padding-bottom: 5px;
            border-bottom:1px solid  #e7e7e7;
        }
        nav.top span, nav.top a{
            color: #999;
            margin: 0px 10px 0px 10px;
        }
        nav.top a:hover{
            color: #C40000;
            text-decoration: none;
        }
    </style>
</head>
<!--头部导航栏-->
<div class="row">
    <div class="col">

        <nav class="top ">
            <a href="<%=appPath%>/index.jsp">
                <span class="glyphicon glyphicon-home redColor"></span>
                天猫首页
            </a>

            <span>喵，欢迎来天猫</span>
            <a href="<%=appPath%>/login" id="pleaseLogin">请登录</a>
            <a href="<%=appPath%>/regist" id="regist">免费注册</a>

            <span class="pull-right">

            <a href="<%=appPath%>/login" id="shopCart1"><span class=" glyphicon glyphicon-shopping-cart redColor" ></span>
            购物车<strong id="count">0</strong>件</a>
            </span>
        </nav>
    </div>
</div>

<%
    //获取cookie里的memName(用户名)以及 他购物车的数量count
    String memName = "请登陆";
    String count="0";
    Cookie[] cookies = request.getCookies();
    //从Cookie获得memName
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("memName")){
            memName = cookies[i].getValue();
            break;
        }
    }

    //获取count
    for(int i=0;i<cookies.length;i++){
        if(cookies[i].getName().equals("count")) {
            count=cookies[i].getValue();
            break;
        }
    }


%>

<script>
    <%--修改会员名--%>
    document.getElementById("pleaseLogin").innerHTML="<%=memName%>";


    //改变购物车数量
    document.getElementById("count").innerHTML="<%=count%>";

    //改变 购物车 的连接地址
    var shopCart=document.getElementById("shopCart1");
    shopCart.href="<%=appPath%>/shopCart/<%=memName%>";



</script>



