<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-3.3.1.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>搜索页面</title>


    <style>
        img{
            width:100%;
            height: 250px;
        }
        .price{
            font-size: 20px;
            color: #CC0000;
            display: block;
            padding-left: 4px;
        }
        .introduce{
            margin: 10px 0px;
            color: #333333;
            font-size: 20px;
            display: block;
        }
        .introduce:hover{
            color:red;
        }
        .commodity{
            margin-left: 20px;
            border: 3px solid #fff;
            height: 350px;

            margin-top: 30px;
        }
        .commodity:hover{
            border-color: red;
        }

    </style>
</head>
<body>
<%--保含导航页navigation.jsp--%>
<jsp:include page="/navigation.jsp"/>

<div class="container">
    <div class="row">

        <c:forEach var="product" items="${requestScope.get('product')}" varStatus="status">
            <div class="commodity col-md-3">
                <div class="row">
                    <img src="${product.imgUrl}">
                </div>

                <div class="row">
                    <span class="price">￥${product.currentPrice}</span>
                    <div class="introduce">${product.introduce}</div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>


</body>
</html>
