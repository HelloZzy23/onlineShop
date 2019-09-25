<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + appPath;
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery-3.3.1.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>购物车页面</title>

    <style>
        body{
            font-size: 12px;
            font-family: Arial;
        }
        a{
            color:#999;
        }
        a:hover{
            text-decoration:none;
            color: #C40000;
        }
        div.cartProductChangeNumberDiv a {
            width: 14px;
            display: inline-block;
            text-align: center;
            color: black;
            text-decoration: none;
        }
        img.cartProductItemIfSelected, img.selectAllItem {
            cursor: pointer;
        }
        tr.cartProductItemTR {
            border: 1px solid #CCCCCC;
        }
        div.cartProductChangeNumberDiv {
            border: solid 1px #E5E5E5;
            width: 80px;
        }
        table.cartProductTable {
            width: 100%;
            font-size:12px;
        }
        span.cartProductItemOringalPrice {
            text-decoration: line-through;
            color: #9C9C9C;
            display: block;
            font-weight: bold;
            font-size: 14px;
        }
        div.cartProductChangeNumberDiv input {
            border: solid 1px #AAAAAA;
            width: 42px;
            display: inline-block;
        }
        div.cartProductChangeNumberDiv a {
            text-decoration: none;
        }
        img.cartProductImg {
            padding: 1px;
            border: 1px solid #EEEEEE;
            width: 80px;
            height: 80px;
        }
        a.cartProductLink {
            color: #3C3C3C;
        }
        a.cartProductLink:hover {
            color: #C40000;
            text-decoration: underline;
        }
        div.cartProductLinkOutDiv {
            position: relative;
            height: 80px;
        }
        span.cartSumNumber {
            color: #C40000;
            font-weight: bold;
            font-size: 16px;
        }
        tr.cartProductItemTR td {
            padding: 20px 20px;
        }
        span.cartSumPrice {
            color: #C40000;
            font-weight: bold;
            font-size: 20px;
        }
        span.cartProductItemPromotionPrice {
            font-family: Arial;
            font-size: 14px;
            font-weight: bold;
            color: #C40000;
        }
        span.cartProductItemSmallSumPrice {
            font-family: Arial;
            font-size: 14px;
            font-weight: bold;
            color: #C40000;
        }
        span.cartTitlePrice {
            color: #C40000;
            font-size: 14px;
            font-weight: bold;
            margin-left: 5px;
            margin-right: 3px;
        }
        div.cartProductLinkInnerDiv {
            position: absolute;
            bottom: 0;
            height: 20px;
        }
        div.cartTitle button {
            background-color: #AAAAAA;
            border: 1px solid #AAAAAA;
            color: white;
            width: 53px;
            height: 25px;
            border-radius: 2px;
        }
        div.cartFoot {
            background-color: #E5E5E5;
            line-height: 50px;
            margin: 20px 0px;
            color: black;
            padding-left: 20px;
        }
        div.cartFoot button {
            background-color: #AAAAAA;
            border: 0px solid #AAAAAA;
            color: white;
            height: 100%;
            width: 120px;
            height: 50px;
            font-size: 20px;
            text-align: center;
        }
        table.cartProductTable th {
            font-weight: normal;
            color: #3C3C3C;
            padding: 20px 20px;
        }
        table.cartProductTable th.selectAndImage{
            width:140px;
        }
        table.cartProductTable th.operation{
            width:30px;
        }
        div.cartDiv {
            max-width: 1013px;
            margin: 10px auto;
            color: black;
        }
    </style>

    <script type="text/javascript">
       $(document).ready(function(){
           var sum=0;

           $(".cartProductItemTR").each(function(index){
               var currentPrice=$(this).find('cartProductItemSmallSumPrice').text();
               sum+=parseInt(currentPrice);
           });
           alert(num);
       });

    </script>
</head>

<body>
<%--包含导航页navigation.jsp--%>
<jsp:include page="/navigation.jsp"/>



<div class="cartDiv">

    <div class="cartProductList">
        <table class="cartProductTable">
            <%--表头--%>
            <thead>
            <tr>
                <th class="selectAndImage">商品图片</th>
                <th>商品信息</th>
                <th>单价</th>
                <th>数量</th>
                <th width="120px">金额</th>
                <th class="operation">操作</th>
            </tr>
            </thead>
            <tbody>

            <%--接受从memController发送过来的<list>  shopCartInfo,并使用JSTL的for循环打印输出--%>
            <c:forEach var="shopCart" items="${requestScope.get('shopCartInfo')}" varStatus="status">
                <tr class="cartProductItemTR" style="background-color: rgb(255, 255, 255);">
                    <td>
                        <img src="${shopCart.imgUrl}" class="cartProductImg">
                    </td>
                    <td>
                        <div class="cartProductLinkOutDiv">
                            <a class="cartProductLink" href="#nowhere">${shopCart.introduce}</a>
                            <div class="cartProductLinkInnerDiv">
                                <img title="支持信用卡支付" src="http://how2j.cn/tmall/img/site/creditcard.png">
                                <img title="消费者保障服务,承诺7天退货" src="http://how2j.cn/tmall/img/site/7day.png">
                                <img title="消费者保障服务,承诺如实描述" src="http://how2j.cn/tmall/img/site/promise.png">
                            </div>
                        </div>
                    </td>
                    <td>
                        <span class="cartProductItemOringalPrice">￥${shopCart.basicPrice}</span>
                        <span class="cartProductItemPromotionPrice">￥${shopCart.currentPrice}</span>
                    </td>
                    <td>
                        <div class="cartProductChangeNumberDiv">
                                <%--<input value="1" autocomplete="off" class="orderItemNumberSetting" oiid="936" pid="365">--%>
                            <span class="orderItemNumberSetting">${shopCart.buyCount}</span>
                        </div>
                    </td>
                    <td>
                            <span class="cartProductItemSmallSumPrice">
                            ￥${shopCart.currentPrice}
                            </span>
                    </td>
                    <td>
                        <a href="<%=appPath%>/delete/${shopCart.id}/${shopCart.memName}" class="deleteOrderItem">删除</a>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
        </table>
    </div>

    <div class="cartTitle pull-right">
        <%--<span>已选商品  (不含运费)</span>
        <span class="cartTitlePrice">￥0.00</span>--%>
        <a href="<%=basePath%>/paySuccess.jsp"><button class="btn btn-primary">结 算</button></a>
    </div>
</div>




</body>
</html>
