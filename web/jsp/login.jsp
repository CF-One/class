<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
<%
    String phone= request.getParameter("phone");
    String message= (String) session.getAttribute("message");
    String pwdMessage= (String) session.getAttribute("pwdMessage");
%>
<div class="top">
    <div class="main">
        <div class="mainShadow">
        </div>
    </div>
    <div class="login">
        <div class="loginTitle">
            <a class="loginTitleAccount">账号登录</a>
            <a class="loginTitlePhone">手机短信登录</a>
            <a class="loginTitleWeChat">微信登录</a>
        </div>
        <form>
            <div class="form">
                <div class="loginContent">
                    <div class="loginContentDiv">
                        <input type="text" placeholder="邮箱/账号/手机号" name="userName" id="phone" onblur="phoneBlur()"
                            <%
                            if (phone!=null){%>
                               value="<%=phone%>"
                            <%session.removeAttribute("phone");}%>
                        ><br>
                        <span class="hint" id="phoneHint">
                            <%
                                if (message!=null){%>
                                   <%=message%>
                                <%session.removeAttribute("message");
                                }%>
                        </span>
                    </div>
                    <div class="loginContentDiv">
                        <input type="password" placeholder="密码" name="passWord" id="password" onblur="passwordBlur()"><br>
                        <span class="hint" id="passwordHint">
                            <%
                                if (pwdMessage!=null){%>
                                   <%=pwdMessage%>
                                <%session.removeAttribute("pwdMessage");
                                }%>
                        </span>
                    </div>
                </div>
                <div style="text-align: left;padding-left: 34px;margin-top: 10px;color: #A1A1A1;">
                    <input type="radio" name="user" value="1" checked="checked">学生登录
                    <input type="radio" name="user" value="2">老师登录
                </div>
                <div class="loginContentForget">
                    <input type="checkbox"><span>下次自动登录</span>
                    <a href="../jsp/forgetPassWord.jsp">忘记密码？</a>
                </div>
                <div class="loginContentBtn">
                    <a onclick="loginBtn()" class="loginContentBtnA">登录</a>
                </div>
                <div class="loginContentRegister">
                    <p>还没有账号？<a href="../jsp/register.jsp">去注册</a></p>
                </div>
                <div class="loginCode">
                    <img src="../image/wxloginqr.png">
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="../js/hint.js"></script>
</body>

</html>
