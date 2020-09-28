<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.UserTeacherDao" %>
<%@ page import="dao.UserTeacherDaoImpl" %>
<%@ page import="entity.User" %>
<%@ page import="entity.Task" %>
<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDao" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDaoImp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/js/teacherLogin/createCourse.js"></script>
    <script type="text/javascript" src="/js/teacherLogin/teacherLoginHome.js"></script>
    <script type="text/javascript" src="/js/teacherLogin/task.js"></script><%--
    <script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>--%>
    <link type="text/css" rel="stylesheet" href="/css/teacherLogin/teacherLoginHome.css">
</head>
<body>
<%
    String phone= (String) session.getAttribute("phone");
    TeacherCourse teacherCourse=new TeacherCourseImp();
    TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
    //根据手机号查询其创建的所有课程
    List<Course> courseList=teacherCourse.getCourseAll(phone);
    Course course=null;
    //根据手机号查询其加入的所有课程
    List<Course> selectCourseAll=teacherCourse.getSelectCourseAll(phone);
    Course selectCourse=null;
    //根据手机号查询其创建的所有课程
    List<Course> courseTaskList=teacherCourse.getCourseAll(phone);
    Course courseTask=null;
    SeeMemberDao seeMemberDao=new SeeMemberDaoImp();
%>
<!--包含整个网页内容的大盒子-->
<div class="main">
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <a href="/index.jsp">
            <img src="/image/teacherLogin/home/logo-mainblue.png" class="logo">
        </a>
        <!-- 导航栏 -->
        <ul>
            <li>
                <a href="/">课堂</a>
            </li>
            <li>
                <a href="/">备课区</a>
            </li>
            <li>
                <a href="/">精品慕课</a>
            </li>
            <li>
                <a href="/">我的精品</a>
            </li>
            <li>
                <a href="/">双选会</a>
            </li>
            <li>
                <a href="/">论文管理</a>
                <img src="/image/teacherLogin/home/hot.png" style="width: 21px;height: 10px;vertical-align: top;padding-top: 10px">
            </li>
        </ul>
        <div class="btm"></div>
        <!-- 头部右边 -->
        <!-- 个人头像 -->
        <div class="touxiangBox">
            <a href="#">
                <%
                    String teacherImg=seeMemberDao.selectTeacherImg(phone);
                %>
                <img src="/image/head/<%=teacherImg%>.png" id="touxiang">
            </a>
            <%
                UserTeacherDao userTeacherDao1=new UserTeacherDaoImpl();
                String teacherUserName=userTeacherDao1.queryName(phone);
            %>
            <span class="touxiangBoxName"><%=teacherUserName%></span>
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
    <div >
        <%--中部导航栏--%>
        <div class="contentTop">
            <span class="span2">全部课程</span>
            <!-- 右边按钮 -->
            <div class="contentTopRight">
                <!-- 发布活动 -->
                <a href="#">
                    <div class="release" name="popBox" value="弹出框" onclick="popBox7()">
                        <span class="span3">+ 快速发布活动</span>
                    </div>
                </a>
                <!-- 创建加入课程 -->
                <div class="clickOpen">
                    <a href="#" >
                        <div class="release">
                            <span class="span3">+ 创建/加入课程</span>
                        </div>
                    </a>
                    <!-- 弹出菜单 -->
                    <ul class="list">
                        <li class="item" name="popBox" value="弹出框" onclick="popBox()" >
                            <a href="#" style="width: 120px;display: inline-block;">创建课程</a>
                        </li>
                        <li class="item" type="button" name="popBox1" value="弹出框" onclick="popBox1()">
                            <a href="#" style="width: 120px;display: inline-block;">加入课程</a>
                        </li>
                    </ul>
                </div>
                <!-- 归档和排序 -->
                <a href="#" type="button" name="popBox5" value="弹出框" onclick="popBox5()"><img src="/image/teacherLogin/home/guidang.png" class="guidang"></a>
                <a href="#" type="button" name="popBox5" value="弹出框" onclick="popBox5()"><img src="/image/teacherLogin/home/paixu.png" class="paixu"></a>
            </div>
        </div>
        <!-- 课堂展示区域 -->
        <div class="contentMain">
            <!-- 创建的课程 -->
            <%
                for (int i=0;i<courseList.size();i++){
                    course=courseList.get(i);
            %>
            <div class="createCourse">
                <img src="/image/teacherLogin/home/<%=course.getImg()%>.png" class="picture">
                <div class="span4">
                    <a href="/jsp/teacherLogin/teacherCourseDetail.jsp?courseId=+<%=course.getId()%>" >
                        <%=course.getName()%>
                    </a><br>
                    <span style="color: white;font-size: 16px;"><%=course.getGrade()%></span>
                </div>
                <div class="ju">教</div>
                <div class="extraCode">
                    <img src="/image/teacherLogin/home/erweima.png"class="erweima">
                    <a href="#" id="clickOpen2">  加课码： <%=course.getId()%>  ∨&nbsp;</a>
                    <ul class="list1">
                        <li class="item1">
                            <a href="#"  style="width: 120px;display: inline-block; color: black;">停用</a>
                        </li>
                        <li class="item1">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;">重置</a>
                        </li>
                    </ul>
                    <div  class="time"><%=course.getSchoolYear()%><br><%=course.getSemester()%></div>
                </div>
                <div class="txt">
                    <p class="span5">近期作业</p>
                    <%
                        List<Task> taskList=teacherTaskDao.getCourseTaskAll(course.getId());
                        for (int j=0;j<taskList.size();j++){
                            Task courseTaskShow=taskList.get(j);
                    %>
                        <a href="/jsp/teacherLogin/teacherCheckTask.jsp?courseId=<%=course.getId()%>&selectCourseId=<%=courseTaskShow.getId()%>&courseName=<%=course.getName()%>">
                            <%=courseTaskShow.getName()%>
                        </a>
                    <%}%>
                </div>
                <div class="caseDown">
                    <img src="/image/teacherLogin/home/chengyuan.png" class="chengyuan">
                    <img src="/image/teacherLogin/home/more-vertical.png" style="width: 10px; height: 17px;float: right;margin-top: 12px">
                    <a href="#" class="txt1">更多</a>
                    <ul class="more1" >
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block; color: black;" name="popBox4" value="弹出框" onclick="popBox4('<%=course.getId()%>','<%=course.getName()%>','<%=course.getGrade()%>')">编辑</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 100%;display: inline-block;color: black;" name="popBox2" value="弹出框" onclick="popBox2('<%=course.getName()%>','<%=course.getId()%>')">删除</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;" name="popBox3" value="弹出框" onclick="popBox3('<%=course.getId()%>')">归档</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;">复制课程</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;">打包下载</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;">转让</a>
                        </li>
                    </ul>
                    <a href="#" class="txt2">置顶</a>
                    <%
                        TeacherCourse teacherCourse1=new TeacherCourseImp();
                        int num=teacherCourse1.selectCourseId(course.getId());
                    %>
                    <a class="txt3" onclick="teacherSeeMember('<%=course.getName()%>','<%=course.getId()%>')">成员<%=num%>人</a>
                </div>
            </div>
            <%}%>
            <!-- 加入的课程 -->
            <%
                for (int i=0;i<selectCourseAll.size();i++){
                    selectCourse=selectCourseAll.get(i);
            %>
            <div class="createCourse">
                <img src="/image/teacherLogin/home/<%=selectCourse.getImg()%>.png" class="picture">
                <div class="span4">
                    <a href="/jsp/teacherLogin/teacherAddCourseDetail.jsp?courseId=+<%=selectCourse.getId()%>" >
                        <%=selectCourse.getName()%>
                    </a><br>
                    <span style="color: white;font-size: 16px;"><%=selectCourse.getGrade()%></span>
                </div>
                <div class="ju study">学</div>
                <div class="extraCode">
                    <img src="/image/teacherLogin/home/erweima.png"class="erweima">
                    <!--id="clickOpen2"--><a href="#" >   加课码： <%=selectCourse.getId()%>  ∨&nbsp;</a>
                    <ul class="list1">
                        <li class="item1">
                            <a href="#"  style="width: 120px;display: inline-block; color: black;">停用</a>
                        </li>
                        <li class="item1">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;">重置</a>
                        </li>
                    </ul>
                    <div  class="time"><%=selectCourse.getSchoolYear()%><br><%=selectCourse.getSemester()%></div>
                </div>
                <div class="txt">
                    <p class="span5">近期作业</p>
                    <%
                        List<Task> taskList=teacherTaskDao.getCourseTaskAll(selectCourse.getId());
                        for (int j=0;j<taskList.size();j++){
                            Task courseTaskShow=taskList.get(j); %>
                    <a href="#" ><%=courseTaskShow.getName()%></a>
                    <%}%>
                </div>
                <div class="caseDown">
                    <img src="/image/teacherLogin/home/chengyuan.png" class="chengyuan">
                    <img src="/image/teacherLogin/home/more-vertical.png" style="width: 10px; height: 17px;float: right;margin-top: 12px">
                    <a href="#" class="txt1">更多</a>
                    <ul class="addCourseMore" >
                        <li class="moreList">
                            <a href="#"  style="width: 100%;display: inline-block;color: black;" type="button" name="popBox2" value="弹出框" onclick="popBox2Add('<%=selectCourse.getName()%>','<%=selectCourse.getId()%>')">退课</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;" type="button" name="popBox3" value="弹出框" onclick="popBox3AddCourse('<%=selectCourse.getId()%><%=phone%>')">归档</a>
                        </li>
                    </ul>
                    <%--显示老师名字--%>
                    <%
                        UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
                        String teacherName=userTeacherDao.queryName(selectCourse.getTeacherPhone());
                    %>
                    <a href="#" class="txt2">置顶</a>
                    <a href="#" class="txt3"><%=teacherName%></a>

                </div>
            </div>
            <%}%>
            <!-- 创建课程 -->
            <div class="createCourseDiv">
                <img src="/image/teacherLogin/home/create-course.png" class="picture">
                <div class="create" name="popBox" value="弹出框" onclick="popBox()">
                    <a href="#" >
                        <img src="/image/teacherLogin/home/jiahao.png"><br>
                        <span style="margin-left: -22px;">创建课程</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 弹出框 -->

<!-- 遮罩层 -->
<div id="popLayer"></div>
<!-- 弹出框创建课程 -->
<div id="popBox">
    <!-- 关闭按钮 -->
    <div class="close">
        <a href="javascript:void(0)" onclick="closeBox()">
            <img src="/image/teacherLogin/home/close.png">
        </a>
    </div>
    <!-- 创建课程的输入 -->
    <div class="content">
        <div class="title">新建课程</div>
        <!-- 输入课程名称 -->
        <div class="className">
            <div class="textInput">
                <span>课程名称:</span>
                <input class="textBox" placeholder="请输入课程名称" type="text" id="courseName">
            </div>
        </div>
        <!-- 输入班级 -->
        <div class="className">
            <div class="textInput">
                <span>班级名称:</span>
                <input class="textBox" placeholder="请输入班级名称（选填）" type="text" id="grade">
            </div>
        </div>
        <!-- 学期 -->
        <div class="className1">
            <div class="textInput">
                <span>选择学期:</span>
                <select class="textBox1" name="schoolYear" id="schoolYear">
                    <option value="0">2020-2021</option>
                    <option value="1">2021-2022</option>
                    <option value="2">2022-2023</option>
                    <option value="3">2024-2025</option>
                </select>&nbsp;&nbsp;&nbsp;
                <select class="textBox1" name="semester" id="semester">
                    <option value="0">第一学期</option>
                    <option value="1">第二学期</option>
                    <option value="2">整年</option>
                </select>
            </div>
        </div>
        <!-- 复选框 -->
        <div class="className1">
            <span style="font-size: 12px;">学生必须额外填写下列信息才能加入课程</span>
            <div class="textInput">
                <a href="#">
                    <input  type="checkbox">自然班级
                </a>
                <a href="#">
                    <input type="checkbox">年级
                </a>
                <a href="#">
                    <input  type="checkbox">入学年月
                </a>
            </div>
        </div>
        <!-- 按钮 -->
        <div class="className2">
            <div class="button">
                <a href="javascript:void(0)" onclick="closeBox()"><button class="exit" class="close">取消</button></a>
                <a href="javascript:void(0)" onclick="createCourse(<%=phone%>)" style="color: white;"><button class="join" class="close">创建</button></a>
            </div>
        </div>

    </div>
</div>
<!-- 弹出框加入课程 -->
<!-- 遮罩层 -->
<div id="popLayer1"></div>
<!-- 弹出框 -->
<div id="popBox1">
    <!-- 加入课程输入 -->
    <div class="content">
        <div class="title3">&nbsp;&nbsp;&nbsp;加入课程</div>
        <div class="">
            <div class="joinClass">
                <input class="textBox" placeholder="请输入课程加课验证码" type="text" id="addCourseId">
            </div>
        </div>
        <div class="button1">
            <a href="javascript:void(0)" onclick="closeBox1()">
                <button class="exit" class="close">取消</button>
            </a>
            <a href="javascript:void(0)" onclick="addCourse(<%=phone%>)">
                <button class="join" class="close">加入</button>
            </a>
        </div>
    </div>
</div>


<!-- 编辑课程弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer4"></div>
<!-- 弹出框编辑课程 -->
<div id="popBox4">
    <!-- 关闭按钮 -->
    <div class="close">
        <a href="javascript:void(0)" onclick="closeBox4()">
            <img src="/image/teacherLogin/home/close.png">
        </a>
    </div>
    <!-- 编辑课程的输入 -->
    <div class="content">
        <div class="title">编辑课程</div>
        <!-- 输入课程名称 -->
        <div class="className">
            <div class="textInput">
                <span>课程名称:</span>
                <input class="textBox" placeholder="请输入课程名称" type="text" id="updateCourseName">
            </div>
        </div>
        <!-- 输入班级 -->
        <div class="className">
            <div class="textInput">
                <span>班级名称:</span>
                <input class="textBox" placeholder="请输入班级名称（选填）" type="text" id="updateGradeName">
            </div>
        </div>
        <!-- 学期 -->
        <div class="className1">
            <div class="textInput">
                <span>选择学期:</span>
                <select class="textBox1" name="schoolYear" id="updateSchoolYear">
                    <option value="0">2020-2021</option>
                    <option value="1">2021-2022</option>
                    <option value="2">2022-2023</option>
                    <option value="3">2024-2025</option>
                </select>&nbsp;&nbsp;&nbsp;
                <select class="textBox1" name="semester" id="updateSemester">
                    <option value="0">第一学期</option>
                    <option value="1">第二学期</option>
                    <option value="2">整年</option>
                </select>
            </div>
        </div>
        <!-- 复选框 -->
        <div class="className1">
            <span style="font-size: 12px;">学生必须额外填写下列信息才能加入课程</span>
            <div class="textInput">
                <a href="#">
                    <input  type="checkbox">自然班级
                </a>
                <a href="#">
                    <input type="checkbox">年级
                </a>
                <a href="#">
                    <input  type="checkbox">入学年月
                </a>
            </div>
        </div>
        <!-- 按钮 -->
        <div class="className2">
            <div class="button">
                <a href="javascript:void(0)" onclick="closeBox4()"><button class="exit" class="close">取消</button></a>
                <a href="javascript:void(0)" onclick="updateCreateCourse()" style="color: white;"><button class="join" class="close">修改</button></a>
            </div>
        </div>
    </div>
</div>


<!-- 删除创建课程弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer2"></div>
<!-- 弹出框 -->
<div id="popBox2">
    <!-- 删除提醒框 -->
    <div class="content">
        <div class=" delete">
            <p>确定要删除“<span style="color: royalblue;" id="deleteCreateCourseName"></span>”么？</p>
            <p> 您的这个课程的任何信息或评论将被永久删除</p>
            <p style="color: red;">警告：此操作无法撤消</p>
            <p style="color: royalblue;">提醒：已用课程数包含了“删除课程数”</p>
        </div>
        <!-- 输入验证码 -->
        <div class="deleteInput">
            <div class="deleteInput1">
                <input class="delete1" placeholder="请输入课程加课验证码" type="password" id="deleteCreateCoursePassWord">
            </div>
        </div>

        <div class="button2">
            <a href="javascript:void(0)" onclick="closeBox2()">
                <button class="exit" class="close">取消</button>
            </a>
            <a href="javascript:void(0)" onclick="sureDeleteCourse(<%=phone%>)">
                <button class="join" class="close">删除</button>
            </a>
        </div>
    </div>
</div>

<!-- 删除加入课程弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer21"></div>
<!-- 弹出框 -->
<div id="popBox21">
    <!-- 删除提醒框 -->
    <div class="content">
        <div class=" delete">
            <p>确定要删除“<span style="color: royalblue;" id="deleteAddCourseName"></span>”么？</p>
            <p> 您的这个课程的任何信息或评论将被永久删除</p>
            <p style="color: red;">警告：此操作无法撤消</p>
            <p style="color: royalblue;">提醒：已用课程数包含了“删除课程数”</p>
        </div>
        <!-- 输入验证码 -->
        <div class="deleteInput">
            <div class="deleteInput1">
                <input class="delete1" placeholder="请输入课程加课验证码" type="password" id="deleteAddCoursePassWord">
            </div>
        </div>

        <div class="button2">
            <a href="javascript:void(0)" onclick="closeBox2()">
                <button class="exit" class="close">取消</button>
            </a>
            <a href="javascript:void(0)" onclick="sureDeleteAddCourse(<%=phone%>)">
                <button class="join" class="close">删除</button>
            </a>
        </div>
    </div>
</div>

<!-- 归档课程弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer3"></div>
<!-- 弹出框 -->
<div id="popBox3">

    <!-- 删除提醒框 -->
    <div class="content">
        <div class=" delete">
            <p class="tip">要归档此课程么？</p>
            <p class="prompt">您可以在“课堂”-“归档管理”中查看此课程</p>
            <p class="prompt">【归档全部】，学生的课程也会一起被归档</p>
            <p class="prompt">【归档自己】，学生的课程不会被归档</p>
        </div>
        <br><br>
        <div class="deleteInput">
        </div>
        <div class="button3">
            <a href="javascript:void(0)" onclick="closeBox3()">
                <button class="exit" class="close">
                    取消</button>
            </a>
            <a href="javascript:void(0)" onclick="sureFileOwnCourse('4')">
                <button class="exit" class="close">
                    归档全部</button>
            </a>
            <a href="javascript:void(0)" onclick="sureFileOwnCourse('3')">
                <button class="join" class="close">
                    归档自己</button>
            </a>
        </div>
    </div>
</div>
<%--归档自己加入的课程--%>
<div id="popBox3AddCourse" style="height: 210px;">

    <!-- 删除提醒框 -->
    <div class="content">
        <div class=" delete">
            <p class="tip">要归档此课程么？</p>
            <p class="prompt">您可以在“课堂”-“归档管理”中查看此课程</p>
        </div>
        <br><br>
        <div class="deleteInput">
        </div>
        <div class="button3">
            <a href="javascript:void(0)" onclick="closeBox3()">
                <button class="exit" class="close">
                    取消</button></a>
            <a href="javascript:void(0)" onclick="sureFileOwnCourse('5')">
                <button class="join" class="close">
                    归档</button>
            </a>
        </div>
    </div>
</div>

<!--  -->
<!-- 课程排序和归档弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer5"></div>
<!-- 弹出框 -->
<div id="popBox5">
    <!-- 关闭按钮 -->
    <div class="close">
        <a href="javascript:void(0)" onclick="closeBox5()">
            <img src="/image/teacherLogin/home/close.png">
        </a>
    </div>
    <!-- 课程排序 -->
    <ul class="navigation">
        <li class="selected">课程排序</li>
        <li>档案管理</li>
    </ul>
    <div class="content1">
        <div class="list2 " >
            <div class="list3">
                <%
                    List<Course> courseList1=teacherCourse.getCourseAll(phone);
                    Course course1=null;
                    for (int i=0;i<courseList1.size();i++){
                        course1=courseList1.get(i);
                %>
                <a href="">
                    <div class="classList1" ondrop="drop(event,this)" ondragover="allowDrop(event)" draggable="true" ondragstart="drag(event, this)">
                        <img src="/image/teacherLogin/home/ybg.png" class="ybg" >  &nbsp;&nbsp;<%=course1.getName()%>&nbsp;&nbsp;<%=course1.getGrade()%>
                    </div>
                </a>
                <%}%>
            </div>

        </div>
        <div class="list2" style="display: none;padding: 0px 26px;height: 360px;overflow: auto" >
           <%-- 创建的课程归档--%>
            <%
                List<Course> courseList2=teacherCourse.getFileCourseAll(phone);
                Course course2=null;
                for (int i=0;i<courseList2.size();i++){
                    course2=courseList2.get(i);
            %>
            <div class="fileCourse">
                <div style="width: 300px;height: 110px">
                    <a href="#"><img src="/image/teacherLogin/home/<%=course2.getImg()%>.png" style="width: 300px;height: 110px;"></a>
                </div>
                <span class="title1"><%=course2.getName()%></span>
                <span class="title2">角色：教师</span>
                <div class="menu">
                <a href="#"><img src="/image/teacherLogin/home/kczt_23.png" class="kczt_23"></a>
                <!-- 弹出菜单 -->
                <ul class="menuHover">
                    <div class="menuUl">
                        <li>
                            <a href="#" style="display: inline-block; width: 120px;" type="button" name="popBox6" value="弹出框" onclick="popBox6('<%=course2.getId()%>','5')">恢复</a>
                        </li>
                        <li>
                            <a href="#" style="display: inline-block;width: 120px;" type="button" <%--name="popBox2"--%> value="弹出框" onclick="popBox2('<%=course2.getName()%>','<%=course2.getId()%>')">删除</a>
                        </li>
                    </div>
                </ul>
            </div>
            </div>
            <%}%>
            <%--加入的课程归档--%>
            <%
                List<Course> courseList3=teacherCourse.getSelectCourseFileAll(phone);
                Course course3=null;
                for (int i=0;i<courseList3.size();i++){
                    course3=courseList3.get(i);
            %>
            <div class="fileCourse">
                <div style="width: 300px;height: 110px">
                    <a href="#"><img src="/image/teacherLogin/home/<%=course3.getImg()%>.png" style="width: 300px;height: 110px;"></a>
                </div>
                <span class="title1"><%=course3.getName()%></span>
                <span class="title2">角色：教师</span>
                <div class="menu">
                    <a href="#"><img src="/image/teacherLogin/home/kczt_23.png" class="kczt_23"></a>
                    <!-- 弹出菜单 -->
                    <ul class="menuHover">
                        <div class="menuUl">
                            <li>
                                <a href="#" style="display: inline-block; width: 120px;" type="button" name="popBox6" value="弹出框" onclick="popBox6('<%=course3.getId()%><%=phone%>','6')">恢复</a>
                            </li>
                            <li>
                                <a href="#" style="display: inline-block;width: 120px;" type="button" <%--name="popBox2"--%> value="弹出框" onclick="popBox2Add('<%=course3.getName()%>','<%=course3.getId()%>')">删除</a>
                            </li>
                        </div>
                    </ul>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>

<!--  -->
<!-- 归档课程弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer6"></div>
<!-- 弹出框 -->
<div id="popBox6">
    <!-- 恢复提醒框 -->
    <div class="content">
        <div class=" delete">
            <p class="tip">要恢复此课程么？</p>
            <p class="prompt">您和您的学生将可以重新在此课程中互动。</p>
            <p class="prompt">此课程会在课堂页上显示。</p>
        </div>
        <br><br>
        <div class="deleteInput">
        </div>
        <div class="button3">
            <button class="exit" class="close"><a href="javascript:void(0)" onclick="closeBox6()">取消</a></button>

            <button class="join" class="close"><a href="javascript:void(0)" onclick="recoveryFile()">恢复</a></button>
        </div>
    </div>
</div>
<!-- 快速发布活动弹出框 -->
<!-- 遮罩层 -->
<div id="popLayer7"></div>
<!-- 弹出框 -->
<div id="popBox7">
    <!-- 关闭按钮 -->
    <div>
        <a href="javascript:void(0)" onclick="closeBox7()">
            <img src="/image/teacherLogin/home/close.png" style="margin-left: 660px;">
        </a>
    </div>
    <span class="span6"><b>选择要发布的类型</b></span>
    <div class="releaseType">
        <a href="#" class="tubiao"><img src="/image/teacherLogin/home/gonggao.png"></a>
        <a href="#" class="tubiao"><img src="/image/teacherLogin/home/huati.png"></a>
        <a href="#" class="tubiao"><img src="/image/teacherLogin/home/hudong.png"></a>
        <a href="#" class="tubiao" <%--name="popBox" --%>value="弹出框" onclick="popBox8()"><img src="/image/teacherLogin/home/zuoye.png"></a>
        <a href="#" class="tubiao"><img src="/image/teacherLogin/home/ceshi.png"></a>
    </div>

</div>

<!--发布个人作业  -->
<div id="popLayer8"></div>
<!-- 弹出框 -->
<div id="popBox8">
    <div class="layer-header">
        <div >
            <img src="/image/teacherLogin/home/publish.png"  class="publish">
            <span  class="span7">发布个人作业</span>
        </div>
        <!-- 关闭按钮 -->
        <div>
            <a href="javascript:void(0)" onclick="closeBox8()">
                <img src="/image/teacherLogin/home/close 2副本.png" style="margin-left: 855px;">
            </a>
        </div>
    </div>
    <div class="homework">
        <input class="textBox2" placeholder=" 作业名称" type="text" id="createTaskName">
        <input class="textBox3" placeholder="作业简介，作业格式等要求,温馨提醒：word,pdf,txt等文字性的文档，都可以进行查重" type="text" id="createTaskSummary">
        <div class="data">
            <span>截止日期:</span>&nbsp;&nbsp;&nbsp;
            <input class="textBox4" placeholder="请截止输入日期" type="text" id="createTaskOverDate">
        </div>
        <div class="data">
            <span>满&nbsp;分&nbsp;值&nbsp;:</span>&nbsp;&nbsp;&nbsp;
            <input class="textBox4" placeholder="请填写数值" type="text" id="createTaskFullScore">
        </div>
        <div class="data">
            <span>是否查重:</span>&nbsp;&nbsp;&nbsp;
            查看警戒值：&nbsp;
            <input class="textBox5" value="     50" type="text" id="createTaskCheck">&nbsp;&nbsp;%
            <p></p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            查重率高于&nbsp;
            <input class="textBox5" value="     50" type="text">&nbsp;&nbsp;%自动打回
        </div>
        <div class="data">
            <button class="button4">
                <a href="#">
                    <img src="/image/teacherLogin/home/xiazai.png"  >
                    <span style="font-size: 16px;color: white;">导入作业</span>
                </a>
            </button>
        </div>
        <div class="data">
            <span>发布课程对象:</span>&nbsp;&nbsp;&nbsp;
            <select class="textBox6" placeholder="请选择要发布的课程" id="createTaskCourseName">
                <%--查询改老师创建的所有课程名字--%>
                <%
                    for (int i=0;i<courseTaskList.size();i++){
                        courseTask=courseTaskList.get(i);
                %>
                <option value="<%=courseTask.getId()%>"><%=courseTask.getName()%></option>
                <%}%>
            </select>
        </div>
        <div class="button3">
            <button class="exit" class="close" onclick="closeBox8()"><a href="javascript:void(0)" >取消</a></button>
            <button class="join" class="close" onclick="createCourseTask()"><a href="javascript:void(0)" >发布</a></button>
        </div>
    </div>
</div>
</div>
</body>
</html>
