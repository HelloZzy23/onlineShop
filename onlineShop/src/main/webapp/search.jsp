<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path=request.getContextPath();%>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery-3.3.1.min.js"></script>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!--引入自己写的css文件-->

    <link href="mycss/search.css" rel="stylesheet">


    <!--引入js文件-->
    <script type="text/javascript" src="myjs/commodityClassfication.js"></script>
</head>
<!--首页搜索框-->
<div class="row">
    <div class="col">

        <div>
            <a href="#nowhere"> <img class="logo" src="http://how2j.cn/tmall/img/site/logo.gif"
                                     id="logo">
            </a>

            <div class="searchDiv">
                <%--form表单--%>
                <form action="<%=path%>/searchCommodity">
                <input type="text" placeholder="时尚男鞋  太阳镜 " name="introduce">
                <button class="searchButton" type="submit">搜索</button>

                </form>


                <div class="searchBelow">
                <span> <a href="#nowhere"> 平衡车 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 扫地机器人 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 原汁机 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 冰箱 </a></span>
                </div>
            </div>
        </div>
    </div>
</div>