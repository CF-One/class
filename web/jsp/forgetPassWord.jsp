<%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/5
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>忘记密码</title>
    <link rel="stylesheet" href="../css/forgetPassWord.css" type="text/css">
    <script type="text/javascript" src="../js/hint.js"></script>
</head>
<body>
<%
    String phone= (String) session.getAttribute("phone");
    String message= (String) session.getAttribute("message");
    String pwdMessage= (String) session.getAttribute("pwdMessage");
    System.out.println("电话号码"+phone);
%>
<div id="divWrap">
    <div id="divContent">
        <p class="divContentTitle">忘记密码？</p>
        <div class="divContentInput">
            <input type="text" placeholder="请输入手机号" id="phone" class="divContentInputPhone" onblur="phoneBlur()"
                <%
                   if (phone!=null){%>
                   value="<%=phone%>"
                <%}session.removeAttribute("phone");%>
            >
            <span id="phoneHint" class="divContentInputSpan">
                <%
                    if (message!=null){%>
                         <%=message%>
                         <%session.removeAttribute("message");
                    }%>
            </span>
        </div>
        <div class="divContentInput">
            <input type="text" placeholder="请输入姓名" id="registerName" class="divContentInputPhone" onblur="nameBlur()">
            <span id="registerNameHint" class="divContentInputSpan">
                <%
                    if (pwdMessage!=null){%>
                            <%=pwdMessage%>
                            <%session.removeAttribute("pwdMessage");
                    }%>
            </span>
        </div>
        <div class="divContentInput">
            <input type="text" placeholder="请输入学校" id="registerSchool" class="divContentInputPhone" onblur="schoolBlur()">
            <span id="registerSchoolHint" class="divContentInputSpan">
                <%
                    if (pwdMessage!=null){%>
                            <%=pwdMessage%>
                            <%session.removeAttribute("pwdMessage");
                    }%>
            </span>
        </div>
        <div class="divContentInputUser">
            <span class="divContentInputUserSpan">您的身份是：</span>
            <input type="radio" name="user" value="1" checked="checked">学生
            <input type="radio" name="user" value="2">老师
        </div>
        <div class="divContentBtn">
            <a href="#" class="divContentBtnA" onclick="nextBtn()">下一步</a>
        </div>
        <div class="divContentAppeal">
            <a class="divContentAppealLogin" href="../jsp/login.jsp">返回登录</a>
            <span>以上方式均不可用？ 您可以进行</span>
            <a href="#">账号申诉</a>
        </div>
    </div>
</div>
</body>
</html>
