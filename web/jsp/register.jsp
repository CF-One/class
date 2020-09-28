<%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/1
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="stylesheet" href="../css/register.css" type="text/css">
</head>
<body>
<div class="top">
    <div class="main">
        <div class="register">
            <div class="registerTitle">
                <h2>注册账号</h2>
                <p>请选择您在日常教学中的实际身份</p>
            </div>
            <div class="registerTeacher">
                <img src="/image/teacher.png">
                <a href="../jsp/registerTeacher.jsp">我是老师/助教</a>
            </div>
            <div class="registerTeacher">
                <img src="/image/student.png">
                <a href="../jsp/registerStudent.jsp">我是学生</a>
            </div>
            <div class="registerLogin">
                <p>已有账号？<a href="../jsp/login.jsp">去登录</a></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
