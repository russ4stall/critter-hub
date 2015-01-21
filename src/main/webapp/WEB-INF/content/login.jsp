<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="app" tagdir="/WEB-INF/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--@elvariable id="action" type="com.russ4stall.jorb.actions.LoginAction"--%>

<html>
<head>
    <app:common-head/>
    <title>LOGIN</title>
    <style>
        body {
            margin-top: 40px;
        }
        .center-block {
            margin-left: auto;
            margin-right: auto;
        }
        .user-form {
            max-width: 300px;
        }
        .title {
            margin-bottom: 40px;
            width: 140px;
            color: #00DFFC;
        }
        .btn-primary {
            background-color: #00B4CC;
            border: 1px solid #005F6B;
        }
        .btn-primary:hover {
            background-color: #008C9E;
            border: 1px solid #005F6B;
        }
    </style>


</head>
<body>
<div>

    <div class="container">
        <div class="row">
            <div class="center-block title">
                 <h2>CRITTER</h2>
            </div>
        </div>

        <div class="center-block user-form">
            <c:forEach items="${action.fieldErrors}" var="error">
                <span class="text-danger">${error.value}</span><br/>
            </c:forEach>
            <form role="form" action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group">
                    <input class="form-control" id="email-field" name="email" type="email" value="${action.email}" placeholder="EMAIL">
                </div>
                <div class="form-group">
                    <input class="form-control" id="password-field" name="password" type="password" placeholder="PASSWORD">
                </div>
                <button type="submit" class="btn btn-primary btn-block btn-lg">SIGN IN</button>
                <a class="btn btn-default btn-block btn-lg" href="${pageContext.request.contextPath}/register">CREATE AN ACCOUNT</a>

            </form>
        </div>
    </div>
</div>
</body>
</html>
