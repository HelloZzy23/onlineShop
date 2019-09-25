
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + appPath + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">

    <style>
        body{
            font-size: 12px;
            font-family: Arial;
        }
        div.imgAndInfo{
            margin: 40px 20px;
        }
        div.imgInimgAndInfo{
            width: 100px;
            float: left;
        }
        div.infoInimgAndInfo{
            padding: 0px 20px;
            overflow: hidden;

        }
        div.infoInimgAndInfo div.productTitle{
            color: black;
            font-size: 16px;
            font-weight: bold;
            margin: 0px 10px;
        }
        div.infoInimgAndInfo div.productSubTitle{
            color: #DD2727;
            font-size: 12px;
            margin: 0px 10px;
        }



        div.infoInimgAndInfo div.productPriceDiv{
            /*background-image:url(http://how2j.cn/tmall/img/site/priceBackground.png);*/
            height: 102px;
            padding: 10px;
            color: #666666;
        }

        div.infoInimgAndInfo div.originalDiv{
            margin-top: 5px;
        }
        div.infoInimgAndInfo span.originalPriceDesc{
            color: #999999;
            display: inline-block;
            width: 68px;
        }
        div.infoInimgAndInfo span.originalPrice{
            font-family: Arial;
            font-size: 12px;
            color: #333333;
            text-decoration: line-through;
        }
        div.infoInimgAndInfo span.promotionPriceYuan{
            font-family: Arial;
            font-size: 18px;
            color: #C40000;
        }
        div.infoInimgAndInfo span.promotionPrice{
            color: #c40000;
            font-family: Arial;
            font-size: 30px;
            font-weight: bold;
        }
        div.infoInimgAndInfo span.promotionPriceDesc{
            color: #999999;
            display: inline-block;
            width: 68px;
            position: relative;
            left: 0px;
            top: -10px;
        }

        div.infoInimgAndInfo div.productSaleAndReviewNumber div{
            display: inline-block;
            width: 49%;
            text-align: center;
            color: #999999;
            font-size: 12px;
        }
        div.infoInimgAndInfo div.productSaleAndReviewNumber div:first-child{
            border-right-width: 1px;
            border-right-style: solid;
            border-right-color: #E5DFDA;
        }

        div.infoInimgAndInfo span.productNumberSettingSpan{
            border: 1px solid #999;
            display: inline-block;
            width: 43px;
            height: 32px;
            padding-top:7px;
        }
        div.infoInimgAndInfo input.productNumberSetting{
            border: 0px;
            height: 80%;
            width: 80%;
        }

        div.buyDiv{
            margin: 20px auto;
            text-align: center;
        }
        div.buyDiv button{
            display: inline-block;
            margin: 0px 10px;
            width: 180px;
            height: 40px;
        }
        button.buyButton{
            border: 1px solid #C40000;
            background-color: #FFEDED;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            color: #C40000;
            font-family: arial;
        }
        button.addCartButton{
            border: 1px solid #C40000;
            background-color: #C40000;
            text-align: center;
            line-height: 40px;
            font-size: 16px;
            color: white;
            font-family: arial;
        }
        button.addCartButton span.glyphicon{
            font-size: 12px;
            margin-right: 8px;
        }
        a:hover{
            text-decoration:none;
        }
        .redColor{
            color: #C40000;
        }
        .boldWord{
            font-weight: bold;
        }

        div.imgInfo img{
            width: 420px;
            height:420px;
        }
        span.introduce{
            padding-bottom: .2em;
            line-height: 1;
            font-size: 16px;
            font-weight: 700;
            color: #000;
        }

        span.basicPrice{
            color: #FF0036;
            font-size: 24px;
            font-weight: bolder;
            margin-top: 20px;
        }

        span.currentPrice{
            color: #FF0036;
            font-size: 24px;
            font-weight: bolder;
            margin-top: 20px;
        }
        .mountInput{
            padding: 3px 2px 0 3px;
            line-height: 26px;
            vertical-align: middle;
            width: 50px;
        }
    </style>
</head>
<body>

<%--包含导航页--%>
<jsp:include page="/navigation.jsp" flush="true"/>

<div class="container">
<div class="imgAndInfo">
    <div class="imgInimgAndInfo">
        <img width="100px" src="${commodity.imgUrl}">
    </div>

    <form action="<%=appPath%>/addCommodity">
    <div class="infoInimgAndInfo">

        <input name="memName" value="" type="hidden" id="currentName">

        <input name="imgUrl" value="${commodity.imgUrl}" type="hidden">

        <div class="productTitle">
            <input value="${commodity.introduce}" name="introduce" style="width: 950px;">
        </div>
        <div class="productSubTitle">

        </div>
        <div class="productPrice">

            <div class="productPriceDiv">
                <div class="originalDiv">
                    <span class="originalPriceDesc">价格</span>
                    <span class="originalPriceYuan">¥</span>
                    <%--<span class="originalPrice"></span>--%>
                    <input value="${commodity.basicPrice}" name="basicPrice">
                </div>
                <div class="promotionDiv">
                    <span class="promotionPriceDesc">促销价 </span>
                    <span class="promotionPriceYuan">¥</span>
                    <%--<span class="promotionPrice">--%>
						<%--379.05--%>
					<%--</span>--%>

                    <input value="${commodity.currentPrice}" name="currentPrice">
                </div>
            </div>
        </div>

        <div class="productNumber">
            <span>当前库存<strong style="color: green;font-size: 40px">${commodity.count}</strong>件</span><br>
            <span>输入购买数量</span>
            <span>
				<span class="productNumberSettingSpan"><input type="text" value="1" class="productNumberSetting" name="buyCount">
                </span>
			件</span>

        </div>

        <div class="buyDiv">
            <a href="" class="buyLink"><button class="buyButton">立即购买</button></a>
            <a class="addCartLink" href="" ><button class="addCartButton" type="submit">
                <span class="glyphicon glyphicon-shopping-cart"></span>加入购物车</button>
            </a>
        </div>
    </div>
    </form>
</div>
    <%--<div class="row">
        <div class="col-md-5">
            <div class="imgInfo">
                <img src="https://img.alicdn.com/bao/uploaded/i1/1792368114/O1CN01j9BhGg29oGCdp34vJ_!!0-item_pic.jpg" class="imgInfo">
            </div>
        </div>

        <div class="col-md-6">
            <span class="introduce">Converse Chuck Taylor All Star 匡威 男鞋 女鞋 情侣经典帆布鞋</span>

            <br>商城价格：<span class="basicPrice">￥500</span>
            <br>淘宝价格：<span class="currentPrice">￥400</span>
            <br><label>数量</label>
            <input type="text" name="buyCount" value="1" class="mountInput" >件
            <br><button type="submit" class="btn btn-primary">加入购物车</button>
        </div>
    </div>--%>
</div>

<%--包含页脚 footer.jsp--%>
<%--<jsp:include page="/footer.jsp" flush="true"/>--%>

<%--执行脚本来更换当前用户的名字--%>
<script>
    <%--document.getElementById("pleaseLogin").innerHTML="${member.memName}";--%>
    var name=document.getElementById("pleaseLogin").innerHTML;

    document.getElementById("currentName").value=name;
</script>
</body>

</html>
