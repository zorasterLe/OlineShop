
<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>二手商城-商家注册</title>
</head>

<body>
<div id="main" class="container">
    <div id="header">
        <%@ include file="header.jsp"%>
    </div>
    <div class="login">
        <div class="row">
            <div class="col-md-6">
                <img src="${pageContext.request.contextPath}/image/register1.png" width="450" height="600" alt="" style="margin-left: 40px;">
            </div>
            <div class="col-md-5 form-register">
                <div>
                    <!-- <h2 class="login-h2">登录</h2> -->
                    <form class="form-horizontal" id="form" action="${pageContext.request.contextPath}/registerresult"
                          method="post">
                        <div class="form-group">
                            <!-- <label for="inputName" class="col-sm-2 control-label">昵称</label> -->
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="username"
                                       name="username" placeholder="昵称">
                            </div>
                        </div>
                        <div class="form-group">
                            <!-- <label for="inputPassword" class="col-sm-2 control-label">密码</label> -->
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
                            <label for="confirmlogo1" class="col-sm-2 control-label">验证码</label>
                            <img src="${pageContext.request.contextPath}/verificationcodeimg" id="code" onclick="reloadcode()"
                                 style="cursor: pointer;" alt="看不清楚,换一张" width="100px">
                            <div class="col-sm-10" style="width: 160px">
                                <input type="text" class="form-control" id="confirmlogo1"
                                       name="confirmlogo1" placeholder="验证码">
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