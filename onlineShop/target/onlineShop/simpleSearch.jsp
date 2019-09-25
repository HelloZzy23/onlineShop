
<%@ page contentType="text/html;charset=UTF-8" language="java"pageEncoding="UTF-8" %>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery-3.3.1.min.js"></script>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!--引入自己写的css文件-->

    <link href="mycss/simpleSearchDiv.css" rel="stylesheet">

    <!--引入js文件-->
    <script type="text/javascript" src="myjs/commodityClassfication.js"></script>
</head>
<%--简单搜索框--%>

<div>
    <a href="#nowhere">
        <img src="http://how2j.cn/tmall/img/site/simpleLogo.png" class="simpleLogo" id="simpleLogo">
    </a>
    <div class="simpleSearchDiv pull-right">
        <input type="text" name="keyword" placeholder="平衡车 原汁机">
        <button type="button" class="searchButton">搜天猫</button>
        <div class="searchBelow">
                    <span>
                        <a href="#nowhere">
                            冰箱
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            空调
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            女表
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            男表
                        </a>
                    </span>
        </div>
    </div>
</div>
