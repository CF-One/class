<%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/6
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../css/forgetPassWord.css">
    <script type="text/javascript" src="../js/hint.js"></script>
</head>
<body>
<%
    String phone= (String) session.getAttribute("phone");
%>
<div class="forgetPassWordUpdate">
    <div class="updatePassWord">
        <p class="divContentTitle">修改密码</p>
        <div class="divContentPhone">
            <span>您的手机号：</span><span><%=phone%></span>
        </div>
        <div class="divContentInput">
            <input type="text" placeholder="请输入新密码" id="password" class="divContentInputPhone" onblur="passwordBlur()">
            <span id="passwordHint" class="divContentInputSpan"></span>
        </div>
        <div class="divContentInput">
            <input type="text" placeholder="请输入确认密码" id="registerSurePassword" class="divContentInputPhone" onblur="surePasswordBlur()">
            <span id="registerSurePasswordHint" class="divContentInputSpan"></span>
        </div>
        <div class="divContentBtn">
            <a href="#" class="divContentBtnA" onclick="sureUpdate()">确认修改</a>
        </div>
    </div>
</div>
</body>
</html>