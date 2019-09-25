<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>后台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/navigation.jsp"/>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1 style="text-align: center">
                    Welcome,在线商城后台管理系统
                </h1>
            </div>
        </div>
    </div>

    <%--会员信息--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="color: #449d44;">所有会员信息</small>
                </h1>
            </div>
        </div>
    </div>
    <%--<div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="">新增</a>
        </div>
    </div>--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>id</th>
                    <th>会员名</th>
                    <th>性别</th>
                    <th>地址</th>
                    <th>登陆密码</th>
                    <th>联系方式</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="member1" items="${requestScope.get('list1')}" varStatus="status">
                    <tr>
                        <td>${member1.memId}</td>
                        <td>${member1.memName}</td>
                        <td>${member1.sex}</td>
                        <td>${member1.address}</td>
                        <td>${member1.password}</td>
                        <td>${member1.tel}</td>
                        <td>
                            <%--<a href="">更改</a> |--%>
                            <a href="<%=appPath%>/delMemberById/${member1.memId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

    <%--商品信息--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="color: #449d44;">所有商品信息</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="<%=appPath%>/addsp">新增商品</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>商品图片</th>
                    <th>id</th>
                    <th>商品描述</th>
                    <th>原来价格</th>
                    <th>当前价格</th>
                    <th>库存</th>

                </tr>
                </thead>

                <tbody>
                <c:forEach var="commodities" items="${requestScope.get('commodities')}" varStatus="status">
                    <tr>
                        <td><img src="${commodities.imgUrl}" style="height: 130px;width: 130px"> </td>
                        <td>${commodities.comId}</td>
                        <td>${commodities.introduce}</td>
                        <td>￥${commodities.basicPrice}</td>
                        <td>￥${commodities.currentPrice}</td>
                        <td>${commodities.count}件</td>

                        <td>
                            <a href="<%=appPath%>/updateCommodity/${commodities.comId}">更改</a> |
                            <a href="<%=appPath%>/deleteCommodityById/${commodities.comId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>