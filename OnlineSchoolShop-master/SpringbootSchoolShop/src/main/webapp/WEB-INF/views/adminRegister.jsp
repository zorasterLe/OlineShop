
<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>二手商城-商家注册</title>
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/validate.js"></script>
</head>
<body style="background: url(${pageContext.request.contextPath}/image/Aregisterb.jpeg)">
<div id="main" class="container">

        <h1 style="display:block;text-align:center">商家注册</h1>

    <div class="login">
        <div class="row">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/image/Aregisters.jpg" width="450" height="450" alt="" style="margin-left: 40px;">
            </div>
            <div class="col-md-5 form-register">
                <div>

                    <form class="form-horizontal" id="form" action="${pageContext.request.contextPath}/adminRegisterresult"
                          method="post">
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="adminname"
                                       name="adminname" placeholder="昵称">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password"
                                       name="password" placeholder="密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="confirmPassword" class="col-sm-2 control-label">确认密码</label> -->
                            <div class="col-sm-10">
                                <input type="password" class="form-control"
                                       id="confirmPassword" name="confirmPassword" placeholder="确认密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="confirmlogo2" class="col-sm-2 control-label">验证码</label>
                            <img src="${pageContext.request.contextPath}/verificationcodeimg" id="code" onclick="reloadcode()"
                                 style="cursor: pointer;" alt="看不清楚,换一张" width="100px">
                            <div class="col-sm-10" style="width: 160px">
                                <input type="text" class="form-control" id="confirmlogo2"
                                       name="confirmlogo2" placeholder="验证码">
                            </div>
                        </div>
                        <div style="margin-left:80px;color:red;">
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                <input type="hidden" name="flag" id="flag" value="1"> <input
                                    type="submit" class="btn btn-primary form-control" value="注册">
                                <div class="error">
                                    ${errorMsg}
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>