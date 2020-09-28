<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDao" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDaoImp" %>
<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="dao.ResultDaoImp" %>
<%@ page import="entity.StuResult" %>
<%@ page import="java.io.Console" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/teacherLogin/teacherCheckTask.css">
</head>
<body>
<%
    //String courseId=request.getParameter("courseId").trim();
    String phone= (String) session.getAttribute("phone");
    String taskId=request.getParameter("selectCourseId").trim();
    //String courseName=request.getParameter("courseName").trim();
    TeacherCourse teacherCourse=new TeacherCourseImp();
    SeeMemberDao seeMemberDao=new SeeMemberDaoImp();
    TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
    String courseId=teacherTaskDao.selectCourseId(taskId);
    String courseName=teacherCourse.selectCourseName(courseId);
    ResultDao resultDao=new ResultDaoImp();
%>
<!--包含整个网页内容的大盒子-->
<div class="main">
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <a href="/jsp/teacherLogin/teacherCourseDetail.jsp?courseId=+<%=courseId%>" >
            <img src="/image/teacherLogin/seeStudent/fanhui.png" class="logo">
            <span class="span"> &nbsp;<%=courseName%>&nbsp;</span>
        </a>
        <!-- 导航栏 -->
        <ul class="topUl">
            <li class="studentTask">
                <a href="#">学生作业</a>
            </li>
            <li>
                <a href="#">作业讨论</a>
            </li>
        </ul>
        <!-- 头部右边 -->
        <!-- 个人头像 -->
        <div class="touxiangBox">
            <a href="#">
                <img src="/image/head/touxiang.png" id="touxiang">
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
            <div>
                <span class="span1"><%=teacherTaskDao.selectTaskName(taskId)%></span>
                <button class="button">
                    <a href="#">生成期末考成绩</a>
                </button>
            </div>
            <div>
                <button class="button1">截至日期：  <%=teacherTaskDao.selectTaskOverDate(taskId)%></button>
                <div class="textBox">
                    <input  placeholder="     姓名、学号" type="text" class="input">
                    <a href="#">
                        <img src="/image/teacherLogin/seeStudent/se_s.png">
                    </a>
                </div>
                <select class="select">
                    <option>对学生隐藏成绩</option>
                    <option>对学生显示成绩</option>
                </select>
                <a href="#">
                    <img src="/image/teacherLogin/seeStudent/chachong.png" class="chachong">
                </a>
            </div>
        </div>
        <!-- 表格显示区域 -->
        <div class="contentDown">
            <!-- 头部文字 -->
            <div class="title">
                <span class="span2">
                    已筛选出 <%=teacherCourse.selectCourseId(courseId)%>人 （全班共<%=teacherCourse.selectCourseId(courseId)%>人）
                </span>
                <a href="#" id="a">
                    收起
                </a>
            </div>
            <!-- 列表 -->
            <div class="workTips">
                <table class="table1" cellspacing="0">
                    <tr class="tr">
                        <td  class="td1">成绩：</td>
                        <td class="td2">
                            <img src="/image/teacherLogin/seeStudent/buxian.png" class="buxian">
                            <div class="box">
                                <input type="checkbox" class="checkbox1">已批（）
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox1">已批（）
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox1">已批（）
                            </div>

                        </td>

                    </tr>
                    <tr class="tr">
                        <td  class="td1">相似度：</td>
                        <td class="td2">
                            <img src="/image/teacherLogin/seeStudent/buxian.png" class="buxian">
                            <div class="box">
                                <input type="checkbox" class="checkbox1">0%-50%
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox1">50%-70%
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox2">70%-90%
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox2">90%-100%
                            </div>
                        </td>

                    </tr>
                    <tr class="tr">
                        <td  class="td1">提交状态：</td>
                        <td class="td2">
                            <img src="/image/teacherLogin/seeStudent/buxian.png" class="buxian">
                            <div class="box">
                                <input type="checkbox" class="checkbox1">按时交&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox1">超时交
                            </div>

                        </td>

                    </tr>
                    <tr class="tr">
                        <td  class="td1">分享状态：</td>
                        <td class="td2">
                            <img src="/image/teacherLogin/seeStudent/buxian.png" class="buxian">
                            <div class="box">
                                <input type="checkbox" class="checkbox1">未分享&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="box">
                                <input type="checkbox" class="checkbox1">已分享
                            </div>

                        </td>

                    </tr>

                    <tr class="tr" >
                        <td  class="td1">作业字数：</td>
                        <td class="td2">
                            <div class="box">
                                <input class="input1">
                            </div>
                            <hr class="hr1"></hr>
                            <div class="box" style="margin-right: 20px;">
                                <input class="input1">
                            </div>
                            <a href="#" class="sure">确定</a>
                        </td>

                    </tr>
                    <tr class="tr">
                        <td  class="td1">批改次数：</td>
                        <td class="td2">
                            <div class="box">
                                <input class="input1">
                            </div>
                            <hr class="hr1"></hr>
                            <div class="box" style="margin-right: 20px;">
                                <input class="input1">
                            </div>
                            <a href="#" class="sure">确定</a>
                        </td>

                    </tr>


                </table>

            </div>
            <!-- 导航栏 -->
            <div class="nav">
                <a href="#" class="idNumber">学号</a>
                <a href="#" class="idNumber">姓名</a>
                <a href="#" class="idNumber">成绩</a>
                <a href="#" class="idNumber">相似度</a>
                <div class="state">
                    <a href="#">
                        <span style=" color: #4d90fe;">提交状态</span>
                        <img src="/image/teacherLogin/seeStudent/arrow-icon.png">
                    </a>

                </div>
                <a href="#" class="idNumber">作业字数</a>
                <a href="#" class="idNumber">批改字数</a>
            </div>
            <!-- 学生作业提交显示表格 -->
            <div class="nav1">
                <div class="all">
                    <input type="checkbox" class="checkbox3" id="selectAll" >
                    <span id="pp">本页全选 </span>
                </div>
                <button class="button2">批量给分▼</button>
                <button class="button2">打回作业</button>
                <button class="button2">下载▼</button>
                <div class="red">查重率超过50%自动标红</div>
            </div>
            <div class="table">
                <table border rules=cols cellspacing=0 class="table2">

                    <%
                        List<StuResult> stuResults=resultDao.getStuResultAll(taskId);
                        for (int j=0;j<stuResults.size();j++){
                            StuResult stuResult=stuResults.get(j);
                            if (stuResult.getTaskContent().length()==4){%>
                                <%--催交--%>
                    <tr class="tr1">
                        <td>
                            <input type="checkbox" class="checkbox3" name="gg">
                        </td>
                        <td class="userId">
                            <%=stuResult.getStudentId()%>
                        </td>
                        <td style="color: black;width: 90px;">
                            <%=stuResult.getStudentName()%>
                        </td>
                        <td style="color: red;">未交</td>
                        <td class="similar">--</td>
                        <td class="provideDate">--</td>
                        <td class="taskNum">--</td>
                        <td class="checkNum">--</td>
                        <td>
                            <a href="#" class="look" name="popBox" value="弹出框" onclick="popBox('<%=stuResult.getTaskId()%>','<%=stuResult.getId()%>','<%=stuResult.getStudentId()%>')">催交</a>&nbsp;
                            <a href="#" class="look" name="popBox1" value="弹出框" onclick="popBox1()" >全部催交</a>
                            <%
                                if (stuResult.getExNum()>0){%>
                                    <a href="#" style="color: red;margin-left: 5px">已催<%=stuResult.getExNum()%>次</a>
                                <%}%>
                        </td>
                    </tr>
                    <%}else{%>

                    <%--批改--%>
                    <tr class="tr1">
                        <td class="tdCheckBox">
                            <input type="checkbox" class="checkbox3" name="gg">
                        </td>
                        <td class="userId">
                            <%=stuResult.getStudentId()%>
                        </td>
                        <td style="color: black;width: 90px;">
                            <%=stuResult.getStudentName()%>
                        </td>
                        <td class="tdGrade">
                            <input type="text" value="<%=stuResult.getStudentResult()%>" class="grade" onchange="changeGrades1('<%=stuResult.getId()%>', this.value,'<%=taskId%>')">/100
                        </td>
                        <td class="similar">--</td>
                        <td class="provideDate">
                            <%=stuResult.getProvideDate()%>
                        </td>
                        <td class="taskNum">字数：<%=stuResult.getTaskContent().length()%></td>
                        <td class="checkNum">
                            批阅<span><%=stuResult.getCallNum()%></span>次
                        </td>
                        <td>
                            <a href="/jsp/teacherLogin/teacherRead.jsp?resultId=<%=stuResult.getId()%>" target="_blank" class="look">进入批阅</a>
                        </td>
                    </tr>
                    <%
                        }
                        }
                    %>

                </table>
            </div>
        </div>
    </div>
</div>

<!-- 催交弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer"></div>
<!-- 弹出框 -->
<div id="popBox">
    <!-- 催交提醒框 -->
    <span class="span3">是否要进行作业催交？</span>
    <a href="javascript:void(0)" onclick="closeBox()">
        <button class="button3">不催了</button>
    </a>
    <a href="javascript:void(0)" onclick="teacherSureCall()">
        <button class="button4">立即催交</button>
    </a>
</div>
<!-- 全部催交弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer"></div>
<!-- 弹出框 -->
<div id="popBox1">
    <!-- 催交提醒框 -->
    <span class="span3">是否要进行全部催交？</span>
    <a href="javascript:void(0)" onclick="closeBox1()">
        <button class="button3">不催了</button>
    </a>
    <a href="javascript:void(0)" onclick="closeBox1()">
        <button class="button4">立即催交</button>
    </a>
</div>
<script type="text/javascript" src="/js/teacherLogin/teacherCheckTask.js"></script>
</body>
</html>
