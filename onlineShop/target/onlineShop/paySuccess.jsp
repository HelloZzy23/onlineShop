<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>支付成功</title>
    <meta charset="UTF-8">
    <!--导入css文件-->
    <link href="mycss/paySuccess.css" rel="stylesheet">
</head>
<body>
<jsp:include page="navigation.jsp" flush="true"/>
<div class="payedDiv">
    <div class="payedTextDiv">

        <span>您已成功付款</span>
    </div>
    <div class="payedAddressInfo">
        <ul>
            <li>收货地址： 甘肃省 兰州市 兰州理工大学 </li>
           <%-- <li>实付款：<span class="payedInfoPrice">
			￥2,124.15
			</span></li>--%>
            <li>预计今天送达	</li>
        </ul>
        <%--<div class="paedCheckLinkDiv">
            您可以
            <a href="#nowhere" class="payedCheckLink">查看购物车</a>

        </div>--%>
    </div>
    <div class="payedSeperateLine">
    </div>
</div>
</body>
</html>
