<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta charset="UTF-8">

    <%--导入bootStrap  jQuery文件--%>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <%--导入css文件--%>
    <link href="mycss/login.css" rel="stylesheet">
    <title>登陆页面</title>
</head>
<body>
<%--导入navigation.jsp--%>
<jsp:include page="/navigation.jsp"/>

<div id="loginDiv">
    <form action="<%=appPath%>/checkLogin">
    <div class="loginSmallDiv" id="loginSmallDiv">
        <div class="login_acount_text">账户登录</div>
        <div class="loginInput ">
				<span class="loginInputIcon ">
					<span class=" glyphicon glyphicon-user"></span>
				</span>
            <input type="text" placeholder="手机/会员名/邮箱" name="memName" id="name">
        </div>
        <div class="loginInput ">
				<span class="loginInputIcon ">
					<span class=" glyphicon glyphicon-lock"></span>
				</span>
            <input type="password" placeholder="密码" name="password" id="password">
        </div>
        <div>
            <a href="#nowhere" class="notImplementLink">忘记登录密码</a>
            <a class="pull-right" href="<%=appPath%>/adminLogin">管理员登陆</a>
        </div>
        <div style="margin-top:20px">
            <button type="submit" class="btn btn-block redButton">登录</button>
        </div>
    </div>
    </form>
</div>

<%--包含页脚 footer.jsp--%>

</body>
</html>
