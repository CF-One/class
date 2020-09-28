<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="java.io.Console" %>
<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Course" %>
<%@ page import="entity.Task" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="dao.ResultDaoImp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/teacherLogin/teacherCourseDetail.css" rel="stylesheet"  type="text/css">
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-ui.js"></script>
</head>
<body>
<%
    String courseId=request.getParameter("courseId").trim();
    String phone= (String) session.getAttribute("phone");
    String courseName=null;
    String courseGrade=null;
    String courseImg=null;
    TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
    TeacherCourse teacherCourse=new TeacherCourseImp();
    ResultDao resultDao=new ResultDaoImp();
    int courseNum=teacherCourse.selectCourseNum(phone)+teacherCourse.getSelectCourseNum(phone);
    List<Course> courseList=teacherCourse.getSelectCourse(courseId);
    for (int j=0;j<courseList.size();j++) {
        Course course = courseList.get(j);
        courseName=course.getName();
        courseGrade=course.getGrade();
        courseImg=course.getImg();
    }
%>
<div class="main">
    <!--头部-->
    <div class="top">
        <!--头部左边  -->
        <div class="topLeft">
            <a href="#" class="suofang">
                <img src="/image/teacherLogin/coursePage/suofang.png" id="li-nav-item">
            </a>
            <a href="/jsp/teacherLogin/teacherLoginOne.jsp" class="span">
                <span>课堂</span>
            </a>
            <span class="span1">>  <%=courseName%>  <%=courseGrade%></span>
        </div>
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
                        <a href="#" ><img src="/image/teacherLogin/home/seting.png" class="set"> <span style="margin-left: 40px;">个人设置</span></a>
                    </li>
                    <li class="item4">
                        <a href="#" ><img src="/image/teacherLogin/home/recode_2.png" class="recode_2"> <span style="margin-left: 40px;">邀请记录</span></a>
                    </li>
                    <li class="item4">
                        <a href="/jsp/login.jsp" ><img src="/image/teacherLogin/home/return.png" class="return"> <span style="margin-left: 40px;">退出登录</span></a>
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
    <!-- 头部图片 -->
    <div class="content">
        <div class="course">
            <div class="coursrHeader">
                <img src="/image/teacherLogin/courseDetailHead/<%=courseImg%>.png" class="image1">
                <div class="title">
                    <span class="span2"><%=courseName%></span>
                    <img src="/image/teacherLogin/coursePage/edit-course.png"  class="edit-course">
                    <span class="courseGrade"><%=courseGrade%></span>
                </div>
                <!-- 图片上的文字 -->
                <div class="title1">
                    <div class="extraCode">
                        <img src="/image/teacherLogin/home/erweima.png"class="erweima">
                        <a href="#">  加课二维码 &nbsp;</a>
                    </div>
                    <div class="extraCode">

                        <a href="#">  加课码： <span id="taskCourseId"><%=courseId%></span> ∨&nbsp; &nbsp;</a>
                    </div>
                    <div class="extraCode">
                        <a href="/jsp/teacherLogin/teacherSeeMember.jsp?courseId=+<%=courseId%>+&courseName=+<%=courseName%>">
                            <img src="/image/teacherLogin/coursePage/ren.png"class="erweima"/>
                            成员<span><%=teacherCourse.selectCourseId(courseId)%></span> &nbsp;
                        </a>
                    </div>
                    <div class="extraCode">
                        <a href="#">  <img src="/image/teacherLogin/coursePage/fenxi.png"class="erweima">数据分析 &nbsp;</a>
                    </div>
                    <div class="extraCode">
                        <a href="#"> <img src="/image/teacherLogin/coursePage/A+icon.png"class="erweima"> 成绩 &nbsp;</a>
                    </div>
                </div>
                <div class="clothes">
                    <a href="#"> <img src="/image/teacherLogin/coursePage/clothes.png" ></a>
                </div>
                <%--<div class="number">
                    <span class="span4">0</span>
                    <span class="span5">
                        <%=teacherTaskDao.selectTaskNum(courseId)%>
                    </span>
                    <span class="span5">0</span>
                </div>
                <div class="numbertitle">
                    <span class="span6">互动个数</span>
                    <span class="span7">发布作业</span>
                    <span class="span7">发布测试</span>
                </div>--%>
                <ul>
                    <li class="activeOther">
                        <a href="#">课堂互动</a>
                    </li>
                    <li class="active">
                        <a href="#" >作业</a>
                    </li >
                    <li class="activeOther">
                        <a href="#">话题</a>
                    </li>
                    <li class="activeOther">
                        <a href="#">资料</a>
                    </li>
                    <li class="activeOther">
                        <a href="#">测试</a>
                    </li>
                    <li class="activeOther">
                        <a href="#">公告</a>
                    </li>
                </ul>
            </div>
            <!-- 发布作业按钮 -->
            <%--<div class="coursrMain">
                <button class="button" id="fabu">
                    发布个人作业
                </button>
                &nbsp;&nbsp;
                <button class="button">
                    发布小组作业
                </button>
                <img src="/image/teacherLogin/coursePage/xiazai1.png" class="xiazai1">
            </div>--%>
        </div>
        <!-- 发布作业页面 -->
        <div class="releaseWork">
            <%--<div id="homeWork">
                <input class="textBox2" placeholder="作业名称" type="text" id="createTaskName">
                <input class="textBox3" placeholder="作业简介，作业格式等要求,温馨提醒：word,pdf,txt等文字性的文档，都可以进行查重" type="text" id="createTaskSummary">
                <div class="data">
                    <span>截止日期:</span>&nbsp;&nbsp;&nbsp;
                    <input class="textBox4" placeholder="请输入日期" type="text" id="createTaskOverDate">
                </div>
                <div class="data">
                    <span>满&nbsp;分&nbsp;值&nbsp;:</span>&nbsp;&nbsp;&nbsp;
                    <input class="textBox7" id="createTaskFullScore">
                </div>
                <div class="data">
                    <span>是否查重:</span>
                    <!-- 开关按钮 -->
                    <div class="switch-btn" id="kaiguan">
                        <input type="checkbox" class="hidden-checkbox" name="" value="">
                        <span class="switch-area"></span>
                        <span class="switch-toggle"></span>
                    </div>
                </div>
                <!-- 查重收缩框 -->
                <div id="chachong">
                    <span>查重警戒值：</span>
                    <input class="textBox5" value="50" id="createTaskCheck">%
                    <br><br>
                    <span>查重率高于</span>
                    <input class="textBox5" value="50">%自动打回
                </div>
                <div class="data1">
                    <button class="button4">
                        <a href="#">
                            <img src="/image/teacherLogin/home/xiazai.png"  >
                            <span style="font-size: 16px;color: white;">导入作业</span>
                        </a>
                    </button>
                    <button class="button5" id="peopleTask" onclick="peopleTask('<%=courseId%>')">
                        <a href="#" >
                            <span style="font-size: 16px;color: white;" >发布个人作业</span>
                        </a>
                    </button>
                    <button class="button6">
                        <a href="#">
                            <span style="font-size: 16px;color: #32BAF0 ;" onclick="cancelTask()">取消</span>
                        </a>
                    </button>

                </div>
            </div>--%>

            <!-- 个人作业详情 -->
            <%
                List<Task> taskList=teacherTaskDao.getCourseTaskAll(courseId);
                if (taskList.size()!=0){
                    for (int j=0;j<taskList.size();j++) {
                        Task task = taskList.get(j);
            %>
            <div class="seeHomework" style="margin-top: -70px">
                <span class="personWork"> 个人作业&nbsp; </span>
                <span class="time"> <%=task.getCreateDate()%></span>
                <div class="box">
                    <a href="/jsp/teacherLogin/teacherCheckTask.jsp?courseId=<%=courseId%>&selectCourseId=<%=task.getId()%>&courseName=<%=courseName%>" class="twoWork">
                        <%=task.getName()%>
                    </a>
                </div>
                <span class="details"> <%=task.getSummary()%> </span>
                <span class="finnalTime">截止日期：<%=task.getOverDate()%>&nbsp;&nbsp;&nbsp;&nbsp;0条讨论 </span>
                <button class="btnSubmitTask">提交作业</button>
                <%--<div class="number1">
                    <a href="#" class="span8"><%=resultDao.selectTaskChangeNum(task.getId())%></a>
                    <a href="#" class="span91"><%=resultDao.selectTaskNoChangeNum(task.getId())%></a>
                    <a href="#" class="span9"><%=resultDao.selectTaskNoProvide(task.getId())%></a>
                </div>
                <div class="numbertitle1">
                    <span class="span10">已批</span>
                    <span class="span11" style="color: #970002;">未批</span>
                    <span class="span11">未交</span>
                </div>--%>
            </div>
            <%
                    }
                }else{
            %>
            <%--个人作业底部--%>
            <div class="contentBottom">
                <p>欢迎开课</p>
                <p>快速发布、收集学生作业，支持50多种文档在线批阅。</p>
                <P>多维度（全班查重、作业字数等）统计学生作业情况。（点击播放视频，查看使用详情）</P>
            </div>
            <%
                }
            %>
        </div>

    </div>
    <!--    左划出菜单-->
    <div class="div-left-menu" id="div-left-menu">
        <div class="div-left-menu-top">
            <a href="#" >课堂</a><br>
            <a href="#" >备课区</a><br>
            <a href="#" >私信</a>
        </div>
        <div class="div-left-menu-course">
            <div class="courseBox">
                <p>已有课程(<span><%=courseNum%></span>)</p>
                <%
                    List<Course> courses=teacherCourse.courseAll(phone);
                    for (int j=0;j<courses.size();j++) {
                        Course course1 = courses.get(j);
                %>
                <div class="courseList" >
                    <img src="/image/teacherLogin/home/<%=course1.getImg()%>.png"/>
                    <a href="/jsp/teacherLogin/teacherCourseDetail.jsp?courseId=+<%=course1.getId()%>" >
                        <%=course1.getName()%>
                    </a>
                </div>
                <%
                    }
                %>
                <%
                    List<Course> courses1=teacherCourse.selectCourseAll(phone);
                    for (int j=0;j<courses1.size();j++) {
                        Course course2 = courses1.get(j);
                %>
                <div class="courseList" >
                    <img src="/image/teacherLogin/home/<%=course2.getImg()%>.png"/>
                    <a href="/jsp/teacherLogin/teacherAddCourseDetail.jsp?courseId=+<%=course2.getId()%>" >
                        <%=course2.getName()%>
                    </a>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>

</div>
<script src="/js/teacherLogin/teacherCourseDetail.js"></script>
</body>
</html>
