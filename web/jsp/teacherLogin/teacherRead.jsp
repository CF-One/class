<%@ page import="dao.ResultDao" %>
<%@ page import="dao.ResultDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/18
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进入批阅</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/js/teacherLogin/teacherRead.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/teacherLogin/teacherRead.css">
</head>
<body>
<%
    String resultId=request.getParameter("resultId");
    ResultDao resultDao=new ResultDaoImp();
    String taskId=resultDao.selectTaskId(resultId);
%>
<!--包含整个网页内容的大盒子-->
<div class="main">
    <!--头部-->
    <div class="top">
        <!-- 下拉栏 -->
        <span class="span"><%=resultDao.selectStudentName(resultId)%></span>
        <a href="#" id="work">
            <span id="span1">作业.pdf▼</span>
        </a>
        <!-- 弹出框 -->
        <div id="people">
            <ul class="navigation">
                <li class="item4" class="selected">
                    <a href="#" ><span style="margin-left: 40px;">作业.pdf</span></a>
                </li>
                <li class="item4">
                    <a href="#" ><span style="margin-left: 40px;">作业.xlsx</span></a>
                </li>
                <li class="item4">
                    <a href="#" ><span style="margin-left: 40px;">作业.rar</span></a>
                </li>
                <li class="item4">
                    <a href="#" ><span style="margin-left: 40px;">作业.jpg</span></a>
                </li>
            </ul>
        </div>
        <!-- 导航图标 -->
        <a href="#">
            <img src="/image/teacherLogin/readOver/share2.png" class="share2">
        </a>
        <a href="#">
            <img src="/image/teacherLogin/readOver/sixin.png" class="sixin">
        </a>
        <a href="#">
            <img src="/image/teacherLogin/readOver/xiazai.png" class="sixin">
        </a>
        <!-- 打回按钮 -->
        <a href="#">
            <div class="button">打回作业</div>
        </a>
        <a href="#">
            <div class="button1">成绩：<input type="text" value="<%=resultDao.selectStudentGrade(resultId)%>" onchange="changeGrades1('<%=resultId%>', this.value,<%=taskId%>)"></div>
        </a>
        <a href="#">
            <div class="button2"><</div>
        </a>
        <a href="#">
            <div class="button3">></div>
        </a>

    </div>
    <!-- 中部 -->
    <div class="main">
        <a href="#" class="left">
            <img src="/image/teacherLogin/readOver/leftarrow.png">
        </a>
        <a href="#" class="right">
            <img src="/image/teacherLogin/readOver/rightarrow.png">
        </a>
        <div class="contentMain">
            <div class="list2" >
                <p class="list2Content">
                    <%=resultDao.selectTaskContent(resultId)%>
                </p>
            </div>
            <div class="list2" style="display: none;">
                <P class="list2Content">22222222222222</P>
            </div>
            <div class="list2" style="display: none;">
                <img src="/image/teacherLogin/readOver/file_ext_big_rar.png" class="rar">
                <a href="#" class="download">作业附件实例.rar</a>
            </div>
            <div class="list2" style="display: none;">
                <img src="/image/teacherLogin/home/touxiang.png" class="touxiang">
            </div>

        </div>

    </div>
    <script type="text/javascript" src="/js/teacherLogin/teacherCheckTask.js"></script>
</div>
</body>
</html>
