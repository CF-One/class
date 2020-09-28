<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生账户注册</title>
    <link rel="stylesheet" href="../css/registerStudent.css" type="text/css">
    <script type="text/javascript" src="../js/hint.js"></script>
</head>
<body>
<%
    String id= (String) session.getAttribute("id");
    String name= (String) session.getAttribute("name");
    String school= (String) session.getAttribute("school");
    String phone= (String) session.getAttribute("phone");
    String message= (String) session.getAttribute("message");
    String idMessage= (String) session.getAttribute("idMessage");
%>
<div class="top">
    <div class="main">
        <div class="register">
            <div class="registerTitle">
                <a href="register.jsp"><img src="/image/returnReg.png"></a>
                <p>学生注册</p>
            </div>
            <form>
                <div class="registerForm">
                    <div class="registerForm">
                        <div class="registerFormDiv">
                            <input type="text" placeholder="邮箱/手机" id="phone" onblur="phoneBlur()"
                                <%
                                    if (phone!=null){%>
                                   value="<%=phone%>"
                                <%session.removeAttribute("phone");
                                    }%>
                            >
                            <span class="hint" id="phoneHint">
                                <%
                                    if (message!=null){%>
                                   <%=message%>
                                <%session.removeAttribute("message");
                                }%>
                            </span>
                        </div>
                        <div class="registerFormDiv">
                            <input type="password" placeholder="密码" id="password" onblur="passwordBlur()">
                            <span class="hint" id="passwordHint"></span>
                        </div>
                        <div class="registerFormDiv">
                            <input type="password" placeholder="再次输入密码" id="registerSurePassword" onblur="surePasswordBlur()">
                            <span class="hint" id="registerSurePasswordHint"></span>
                        </div>
                        <div class="registerFormDiv">
                            <input type="text" placeholder="姓名" id="registerName" onblur="nameBlur()"
                                <%
                                    if (name!=null){%>
                                   value="<%=name%>"
                                <%session.removeAttribute("name");
                                    }%>
                            >
                            <span class="hint" id="registerNameHint"></span>
                        </div>
                        <div class="registerFormDiv">
                            <input type="text" placeholder="学号" id="registerId" onblur="idBlur()"
                                <%
                                    if (id!=null){%>
                                        value="<%=id%>"
                                <%session.removeAttribute("id");
                                    }%>
                            >
                            <span class="hint" id="registerIdHint">
                                <%
                                    if (idMessage!=null){%>
                                   <%=idMessage%>
                                <%session.removeAttribute("idMessage");
                                }%>
                            </span>
                        </div>
                        <div class="registerFormDiv">
                            <input type="text" placeholder="学校" id="registerSchool" onblur="schoolBlur()"
                                <%
                                    if (school!=null){%>
                                   value="<%=school%>"
                                <%session.removeAttribute("school");
                                    }%>
                            >
                            <span class="hintSchool" id="registerSchoolHint"></span>
                        </div>
                        <div class="registerFormVerification">
                            <input type="text" placeholder="验证码">
                            <img src="../image/Verification/verify.png">
                        </div>
                        <div class="registerFormBtn">
                            <a onclick="registerStudentBtn()" class="registerFormBtnA">注册为学生</a>
                        </div>
                        <div class="registerFormRegister">
                            <p>已有账号？<a href="/jsp/login.jsp">去登录</a></p>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>