
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>商家登录</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet">
<%--    //--%>
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/login.js"></script>
    <style type="text/css">
        .button
        {
            clear:both;
            margin:10px auto;
            text-align:center;
            font-size: 20px;
            padding:10px 0;
            line-height:25px;
            color:#666;
            border-top:#ddd 1px solid;
        }
        .button a
        {
            margin:0 7px;
            color:#666;
        }
        .button a:hover
        {
            color:#000;
            text-decoration:none;
        }
    </style>
</head>
<body class="light-gray-bg" style="background: url(${pageContext.request.contextPath}/image/Aloginb.jpg)">
<div class="templatemo-content-widget templatemo-login-widget white-bg">
    <header class="text-center">
        <div class="square"></div>
        <h1>商家登录</h1>
    </header>
    <form action="${pageContext.request.contextPath}/admin/confirmLogin" class="templatemo-login-form" method="post">

        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div>
                <input type="text" class="form-control" placeholder="用户名" name="adminname">
            </div>
        </div>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div>
                <input type="password" class="form-control" placeholder="密码" name="password">
            </div>
        </div>
        <div class="form-group">
            <div class="checkbox squaredTwo">
                <input type="checkbox" id="c1" name="cc" />
                <%--<label for="c1"><span></span>记住密码</label>--%>
                <span class="error-msg">${errorMsg}</span>
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="templatemo-blue-button width-100">登录</button>
        </div>
        <div class="col-md-4" role="navigation">
            <ul class="nav nav-pills">
                <li><a href="${pageContext.request.contextPath}/adminRegister">注册</a></li>
            </ul>
        </div>
    </form>
</div>
</body>
</html>