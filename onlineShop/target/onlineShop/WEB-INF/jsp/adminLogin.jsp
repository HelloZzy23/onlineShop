
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员登陆</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<jsp:include page="/navigation.jsp"/>

<div class="container">
    <form action="<%=appPath%>/checkAdminLogin" method="post" class="form-horizontal">
        <fieldset>
            <legend><label>管理员登陆</label></legend>
            <div class="form-group">
                <label class="col-md-2">用户名:</label>
                <div class="col-md-5">
                    <input type="text" name="name" class="form-control" placeholder="请输入登录名">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2">密码:</label>
                <div class="col-md-5">
                    <input type="password" name="password" class="form-control" placeholder="请输入登录密码">
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-5 col-md-offset-3">
                    <button type="submit" class="btn btn-primary">登陆</button>
                    <button type="reset" class="btn btn-warning">重置</button>
                </div>
            </div>
        </fieldset>
    </form>
</div>

<%--包含页脚 footer.jsp--%>
<jsp:include page="/footer.jsp" flush="true"/>
</body>
</html>
