<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta charset="UTF-8">
    <%--为了让 Bootstrap 开发的网站对移动设备友好，确保适当的绘制和触屏缩放，需要在网页的 head 之中添加 viewport meta 标签--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%--导入jQuery bootStrap--%>
    <script src="js/jquery-3.3.1.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


    <%--导入css文件--%>
    <link href="mycss/register.css" rel="stylesheet">
    <title>注册页面</title>
</head>
<body>
<jsp:include page="/navigation.jsp"/>

<form action="<%=appPath%>/addMember">
<div class="row">
    <div class="col">
    <div class="registerDiv">
        <form action="<%=appPath%>/regist">
    <table align="center" class="registerTable">
        <tbody><tr>
            <td class="registerTip registerTableLeftTD">设置会员名</td>
            <td></td>
        </tr>
        <tr>
            <td class="registerTableLeftTD">登陆名</td>
            <td class="registerTableRightTD"><input placeholder="会员名一旦设置成功，无法修改" name="memName" id="name"> </td>
        </tr>
        <tr>
            <td class="registerTip registerTableLeftTD">设置登陆密码</td>
            <td class="registerTableRightTD">登陆时验证，保护账号信息</td>
        </tr>
        <tr>
            <td class="registerTableLeftTD">登陆密码</td>
            <td class="registerTableRightTD"><input type="password" placeholder="设置你的登陆密码" name="password" id="password"> </td>
        </tr>
        <tr>
            <td class="registerTableLeftTD">密码确认</td>
            <td class="registerTableRightTD"><input type="password" placeholder="请再次输入你的密码" id="repeatpassword"> </td>
        </tr>
        <tr>
            <td class="registerButtonTD" colspan="2">
                <a href="#nowhere"><button type="submit" class="btn btn-outline-primary">提交</button></a>
                <button type="button" class="btn btn-outline-danger">取消</button>
            </td>
        </tr>
        </tbody>
    </table>
        </form>
</div>
    </div>
</div>
</form>


</body>
</html>
