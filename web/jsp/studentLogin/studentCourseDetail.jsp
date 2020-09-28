<%@ page import="dao.studentDao.StudentCourseDao" %>
<%@ page import="dao.studentDao.studentCourseDaoImp" %>
<%@ page import="entity.Course" %>
<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Task" %>
<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="dao.ResultDao" %>
<%@ page import="dao.ResultDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/22
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href="/css/studentLogin/studentCourseDetail.css" rel="stylesheet" type="text/css">
    <script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<%
    String courseId=request.getParameter("courseId").trim();
    String phone= (String) session.getAttribute("phone");
    StudentCourseDao studentCourseDao=new studentCourseDaoImp();
    String courseName=null;
    String courseGrade=null;
    String courseImg=null;
    TeacherCourse teacherCourse=new TeacherCourseImp();
    TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
    List<Course> courseList=teacherCourse.getSelectCourse(courseId);
    for (int j=0;j<courseList.size();j++) {
        Course course = courseList.get(j);
        courseName=course.getName();
        courseGrade=course.getGrade();
        courseImg=course.getImg();
    }
%>
<div id="main" class="main">
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <div class="topleft">
            <ul class="nav-menu-left">
                <li style="width: 400px;margin-left: 60px">
                    <i class="silebar-icon" id="silebarIcon"></i>
                    <p>
                        <a  href="/jsp/studentLogin/studentLoginHone.jsp" style="display: inline-block">课堂 </a>
                        <span>&gt;</span><%=courseName%>  &nbsp;&nbsp;<%=courseGrade%>
                    </p>
                </li>
            </ul>
        </div>
        <!-- 导航栏 -->
        <!-- 头部右边 -->
        <div class="topRight">
            <a href="#">
                <img src="/image/head/<%=studentCourseDao.selectStudentImg(phone)%>.png" class="touxiang">
            </a>
            <a href="#">
                <img src="/image/teacherLogin/home/naozhong.png" class="naozhong">
            </a>
            <a href="#">
                <span class="span1">工具</span>
                <img src="/image/teacherLogin/home/tool_icon.png" class="tool_icon">
            </a>
        </div>
    </div>

    <!-- 中部 -->
    <div class="content">
        <div class="contentpicture" style="background: url('/image/teacherLogin/courseDetailHead/<%=courseImg%>.png')">
            <h1><%=courseName%> </h1>
            <h2 style="color: white;"><%=courseGrade%></h2>
            <span class="centerright" >加课码： <%=courseId%> </span>&nbsp;&nbsp;
            <span class="centerright" ><a href="/jsp/studentLogin/studentSeeMember.jsp?courseId=<%=courseId%>&courseName=<%=courseName%>&studentPhone=<%=phone%>">同学：<%=teacherCourse.selectCourseId(courseId)%></a></span>&nbsp;&nbsp;
            <span class="centerright" ><a href="#" >成绩</a></span>
        </div>
        <div id="content">
            <div id="tab_bar">
                <!-- 导航区域 -->
                <div class="contentli">
                    <ul>
                        <li id="tab1"  onclick="myclick(1)"><a href="#">课堂互动</a></li>
                        <li id="tab2" onclick="myclick(2)"><a href="#">作业</a> </li>
                        <li id="tab3" onclick="myclick(3)"><a href="#">话题</a></li>
                        <li id="tab4" onclick="myclick(4)"><a href="#">资料</a></li>
                        <li id="tab5" onclick="myclick(5)"><a href="#">测试</a></li>
                        <li id="tab6" onclick="myclick(6)"><a href="#">公告</a></li>
                    </ul>
                </div>
            </div>
            <div class="tab_css" id="tab1_content" style="display: block">
                <div class="interact-page">
                    <div class="cWidth">
                        <div class="groupbtn">
                            <a class="nowithscreen"> 暂无同屏/直播 </a>
                            <a class="joinInteractBtnno">暂无互动</a>
                        </div>
                        <div class="quickbtn">
                            <div class="history">我的互动</div>
                            <div class="prestudyBtn">我的学习</div>
                        </div>
                        <div class="tipinfo"></div>
                        <div class="sendtoppt">
                            <textarea type="text" class="sendinput" placeholder="发送弹幕到PPT"></textarea>
                            <div class="sendbtn">发送</div>
                            <div class="sendDanmu"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab_css" id="tab2_content">
                <div class="work">
                    <ul>
                        <%
                            List<Task> taskList=teacherTaskDao.getCourseTaskAll(courseId);
                            if (taskList.size()!=0){
                                for (int j=0;j<taskList.size();j++) {
                                    Task task = taskList.get(j);
                        %>
                        <li>
                            <div class="title-nav">
                                <span>个人作业</span>
                                <span><%=task.getCreateDate()%></span>
                            </div>
                            <div class="title-work">
                                <h2><a href="#" target="_blank"><%=task.getName()%></a></h2>
                            </div>
                            <div class="title-p">
                                <%=task.getSummary()%>
                                <a href="#" style="color:#318ECB">查看全文&gt;</a>

                            </div>
                            <div class="hand-in-work">
                                <a href="/jsp/studentLogin/studentProvideTask.jsp?taskId=<%=task.getId()%>&studentId=<%=studentCourseDao.selectStudentId(phone)%>" style="color:white;">
                                    <%
                                        ResultDao resultDao=new ResultDaoImp();
                                        if (resultDao.selectTaskContent(String.valueOf(task.getId()),studentCourseDao.selectStudentId(phone)).equals("null")){
                                    %>
                                    上传作业
                                    <%}else{%>
                                    更新作业
                                    <%}%>

                                </a>
                            </div>
                            <div class="title-bottom">
                                <img src="/image/studentLogin/icon/clock.png" alt="时间">截止日期：
                                <span><%=task.getOverDate()%></span>
                                <span>0条讨论</span>
                            </div>
                        </li>
                        <%
                            }
                        }else{
                        %>
                        <%--个人作业底部--%>
                            <div class="contentBottom1">
                                <p>欢迎来到课堂！</p>
                                <p>您的老师尚未发布作业</p>
                            </div>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </div>
            <div class="tab_css" id="tab3_content">
                <div class="topic" >
                    <div class="topic-btn">发起新话题</div>
                    <div class="topic-box">
                        <h3>点击上方按钮，您可以发起新话题。</h3>
                        <p>发起话题之后，无论是老师还是同学们，都可以基于此话题进行讨论</p>
                    </div>
                </div>
            </div>
            <div class="tab_css" id="tab4_content">
                <div class="profile" >
                    <div class="profile-li">
                        <ul>
                            <li><a>附件资源</a></li>
                            <li><a>外链资源</a></li>
                            <li><a>直播录像</a></li>
                            <li><a>录屏录像</a></li>
                        </ul>
                    </div>
                    <div class="profile-box">
                        <div class="profile-box-nav">
                            <p>所有文件</p>
                        </div>
                        <div class="profile-box1">

                        </div>
                    </div>
                </div>
            </div>
            <div class="tab_css" id="tab5_content">
                <div class="test" >
                    <div class="test-li">
                        <ul>
                            <li><a>全部</a><span>(0)</span></li>
                            <li><a>待完成</a><span>(0)</span></li>
                            <li><a>待批改</a><span>(0)</span></li>
                            <li><a>已评改</a><span>(0)</span></li>
                        </ul>
                    </div>
                    <div class="test-box">
                        <p>您的老师未发布测试</p>
                    </div>
                </div>
            </div>
            <div class="tab_css" id="tab6_content">
                <div class="announcement">
                    <div class="announcement-a">
                        <a>重要提示</a>
                    </div>
                    <div class="announcement-time">
                        <span>发布人：蒋林峰  发布时间：20/02/24   21:37</span>
                    </div>
                    <div class="announcement-p">
                        <a>各位同学，请注意查看平台中的学习资料和作业，按时完成视频学习和作业提交。课程视频：1. 张爽, 东北大学, 中国大学MOOC(慕课). https://www.icourse163.org/cours...</a>
                    </div>
                    <div class="annoucement-span">
                        <span>
                             <a> 73人已读</a>
                         </span>
                        <span>
                             <a> 0条评论</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div   class="silebar" id="silebar">
    <div class="left-box" style="padding-left: 20px;">
        <div class="nav-top">
            <a href="class.html" class="leftnavclass">
                <img class="iconclass" src="/image/studentLogin/icon/book-icon.png"><b>课堂</b>
            </a>
            <a href="" class="leftnavletter">
                <div class="img">
                    <img class="iconfont" src="/image/studentLogin/icon/message-icon.png">
                </div>
                <b>私信</b>
            </a>
        </div>
        <div class="open-course" style="height: 104px;">
            <div class="open-box">
                <p style="font-size: 13px;padding-left: 30px;cursor: pointer;">已有课程</p>
                <div class="list">
                    <%
                        List<Course> selectCourseAll=studentCourseDao.getSelectNotFileCourseAll(phone);
                        Course selectCourse=null;
                        for (int i=0;i<selectCourseAll.size();i++){
                            selectCourse=selectCourseAll.get(i);
                    %>
                    <a href="/jsp/studentLogin/studentCourseDetail.jsp?courseId=+<%=selectCourse.getId()%>">
                        <span><%=selectCourse.getName()%></span>
                    </a>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    window.onload=function(){
        //获取侧边栏图标元素
        var silebarIcon=getId('silebarIcon');
        //获取侧边栏元素
        var silebar=getId('silebar');
        //获取页面主体元素
        var main=getId('main');
        //当侧边栏元素点击时
        silebarIcon.onclick=function(e){
            //阻止冒泡
            e.stopPropagation();
            //显示侧边栏
            silebar.style.left='0px'
        }
        //当除了侧边栏的以外的元素点击时
        main.onclick=function(e){
            //阻止冒泡
            e.stopPropagation()
            //隐藏侧边栏
            silebar.style.left='-310px'
        }



    };

    /**
     * 标题点击函数
     * @param v   索引值
     */
    var myclick = function(v) {
        //获取内容元素
        var content=getId('content');
        //获取li元素
        var llis = content.getElementsByTagName("li");
        //当li点击的时候 改变li的样式
        for(var i = 0; i < llis.length; i++) {
            var lli = llis[i];
            if(lli == document.getElementById("tab" + v)) {
                //lli.style.backgroundColor = "";
            } else {
                //lli.style.backgroundColor = "";
            }
        }
        //获取 div元素
        var divs = content.getElementsByClassName("tab_css");
        //根据点击的第几个li 展示对应的内容
        for(var i = 0; i < divs.length; i++) {
            var divv = divs[i];
            if(divv == document.getElementById("tab" + v + "_content")) {
                divv.style.display = "block";
            } else {
                divv.style.display = "none";
            }
        }
    }

    /**
     * 获取id
     * @param id   id参数
     * @returns {HTMLElement}  返回js获取的element元素
     */
    function getId(id){
        return document.getElementById(id);
    }
</script>
</html>
