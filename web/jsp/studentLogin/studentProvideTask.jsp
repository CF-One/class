<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="dao.ResultDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/23
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生提交作业</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/css/studentLogin/studentProvideTask.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/js/teacherLogin/teacherSeeMember.js"></script>
</head>
<body>
<%
    String taskId=request.getParameter("taskId");
    String studentId=request.getParameter("studentId");
    TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
    TeacherCourse teacherCourse=new TeacherCourseImp();
    ResultDao resultDao=new ResultDaoImp();
%>
<!--包含整个网页内容的大盒子-->
<div class="main">
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <a href="/jsp/studentLogin/studentCourseDetail.jsp?courseId=<%=teacherTaskDao.selectCourseId(taskId)%>">
            <img src="/image/teacherLogin/seeStudent/fanhui.png" class="logo">
            <span class="span"> &nbsp;<%=teacherCourse.selectCourseName(teacherTaskDao.selectCourseId(taskId))%>&nbsp;</span>
        </a>
        <!-- 导航栏 -->
        <ul class="topUl">
            <li class="studentTask">
                <a href="#">提交作业</a>
            </li>
            <li>
                <a href="#">作业讨论</a>
            </li>
        </ul>
        <!-- 头部右边 -->
        <!-- 个人头像 -->
        <div class="touxiangBox">
            <a href="#">
                <img src="/image/teacherLogin/home/touxiang.png" id="touxiang">
            </a>
            <!-- 点击弹出列表框 -->
            <div id="people">
                <ul>
                    <li class="item4">
                        <a href="#" ><img src="/image/teacherLogin/home/vip.png" class="vip"> <span style="margin-left: 40px;">开通VIP</span></a>
                    </li>
                    <li class="item4">
                        <a href="#" ><img src="/image/teacherLogin/home/mechanismNo.png" class="mechanismNo"> <span style="margin-left: 40px;">机构账号绑定</span></a>
                    </li>
                    <li class="item4">
                        <a href="#" ><img src="/image/teacherLogin/home/seting.png" class="vip"> <span style="margin-left: 40px;">个人设置</span></a>
                    </li>
                    <li class="item4">
                        <a href="#" ><img src="/image/teacherLogin/home/recode_2.png" class="recode_2"> <span style="margin-left: 40px;">邀请记录</span></a>
                    </li>
                    <li class="item4">
                        <a href="/jsp/login.jsp" ><img src="/image/teacherLogin/home/return.png" class="vip"> <span style="margin-left: 40px;">退出登录</span></a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- 消息通知 -->
        <div class="newsOpen">
            <a href="#" >
                <img src="/image/teacherLogin/home/naozhong.png" id="naozhong" >
            </a>
            <!-- 消息通知弹出框 -->
            <div id="news">
                <span class="newsTitle">暂无新通知</span>
                <div class="newsDown">
                    <a href="#" class="newsLeft">全部标记已读</a>
                    <a href="#" class="newsRight">查看全部</a>
                </div>
            </div>
        </div>
        <div class="tool1">
            <a href="#">
                <img src="/image/teacherLogin/home/tool.png" class="tool_icon">
            </a>
        </div>
    </div>
    <!-- 中部 -->
    <div class="content">
        <!-- 标题 -->
        <div class="contentTop">
            <div class="contentblank"></div>
            <div class="content-wen">
                <div class="content-title">
                    <span class="title-name"><%=teacherTaskDao.selectTaskName(taskId)%></span>
                </div>
                <p class="content-introduce">
                    <span style="font-size:14px;">
                        针对小组所选题目，基于软件目标、功能模型、软件界面、人力分配、进度安排、资金预算等方面，
                        编写简要的软件设计报告，向甲方提供一个简要的项目设计建议书。
                    </span>
                </p>
                <p class="content-span">
                    <span>截止日期: <%=teacherTaskDao.selectTaskOverDate(taskId)%></span>
                    <span>个人作业</span>
                    <span>需要查重</span>
                </p>
                <p class="content-paper">
                    <img src="/image/studentLogin/icon/peper.png">查看谁交了
                </p>
            </div>
        </div>
        <div class="content-handup">
            <div class="handup">
                <div class="handup-button">
                    <a href="#" onclick="submitTask('<%=taskId%>','<%=studentId%>')">
                        <%
                            if (resultDao.selectTaskContent(taskId,studentId).equals("null")){
                        %>
                                提交
                        <%}else{%>
                                更新提交
                        <%}%>
                    </a>
                </div>
                <div class="handup-wwc">
                    <%
                        if (resultDao.selectTaskContent(taskId,studentId).equals("null")){
                    %>
                            <span class="finishTask">未完成</span>
                    <%}else{%>
                            <span class="finishTask">暂未公布成绩</span>
                    <%}%>
                </div>
            </div>
            <div class="homework-box">
                <div class="hw">
                    <div class="hw-tj">
                        <a><img src="/image/studentLogin/icon/plussign.png"></a>
                    </div>
                    <div class="shangchuan">
                            <div class="hw-add">
                                添加作业文件
                            </div>
                            <input class="s2" type="text"  placeholder="支持各类文档、图片、代码、压缩包格式" id="taskContent">
                    </div>
                </div>
            </div>

            <div class="work-message clear" id="mess1">
                <span class="s1">作业留言：</span>
                <span class="s2">点击添加留言（仅老师可看）...</span>
            </div>
        </div>
        <div class="homework-log">
            <a href="#" class="togglesee">查看日志></a>
        </div>
    </div>
</div>
</div>
</body>
<script type="text/javascript">
    function submitTask(taskId,studentId) {
        window.location.href="/servlet/studentServlet/studentProvideTaskServlet?taskId="+taskId+"&studentId="+studentId+"&taskContent="+document.getElementById("taskContent").value;
    }
</script>
</html>

