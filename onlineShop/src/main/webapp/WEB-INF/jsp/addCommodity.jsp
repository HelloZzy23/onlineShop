
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath=request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员添加商品</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="/navigation.jsp"/>

<div class="container">
    <form action="<%=appPath%>/toAddCommodity" method="get" class="form-horizontal">
        <fieldset>
            <legend><label>管理员添加商品信息</label></legend>


            <div class="form-group">
                <label class="col-md-2">商品介绍:</label>
                <div class="col-md-6">
                    <input type="text" name="introduce" class="form-control" placeholder="商品的介绍">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2">基本价格:</label>
                <div class="col-md-6">
                    <input type="text" name="basicPrice" class="form-control" placeholder="基本价格">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-2">当前价格:</label>
                <div class="col-md-6">
                    <input type="text" name="currentPrice" class="form-control" placeholder="现在价格">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2">当前库存:</label>
                <div class="col-md-6">
                    <input type="type" name="count" class="form-control" placeholder="商品库存">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2">图片地址:</label>
                <div class="col-md-6">
                    <input type="type" name="imgUrl" class="form-control" placeholder="输入图片路径">
                </div>
            </div>


            <div class="form-group">
                <div class="col-md-5 col-md-offset-3">
                    <button type="submit" class="btn btn-primary">添加商品</button>
                    <button type="reset" class="btn btn-warning">重置</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>
</body>
</html>
