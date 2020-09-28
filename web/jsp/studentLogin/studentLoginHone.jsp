<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.studentDao.StudentCourseDao" %>
<%@ page import="dao.studentDao.studentCourseDaoImp" %>
<%@ page import="entity.Task" %>
<%@ page import="dao.teacherDao.TeacherTaskDao" %>
<%@ page import="dao.teacherDao.TeacherTaskDaoImp" %>
<%@ page import="dao.UserTeacherDao" %>
<%@ page import="dao.UserTeacherDaoImpl" %>
<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %>
<%@ page import="dao.teacherDao.Message.MessageDao" %>
<%@ page import="dao.teacherDao.Message.MessageDaoImp" %>
<%@ page import="entity.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生登录首页</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="/js/teacherLogin/teacherLoginHome.js"></script>
    <script type="text/javascript" src="/js/studentLogin/studentLoginHome.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/teacherLogin/teacherLoginHome.css">
    <link type="text/css" rel="stylesheet" href="/css/studentLogin/studentLoginHome.css">
</head>
<body>
<%
    String name= (String) session.getAttribute("name");
    String phone= (String) session.getAttribute("phone");
    StudentCourseDao studentCourseDao=new studentCourseDaoImp();
    MessageDao messageDao=new MessageDaoImp();
%>
<div>
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <a href="/index.jsp">
            <img src="/image/teacherLogin/home/logo-mainblue.png" class="logo">
        </a>
        <!-- 导航栏 -->
        <ul>
            <li>
                <a href="#">课堂</a>
            </li>
            <li>
                <a href="#">精品慕课</a>
            </li>
            <li>
                <a href="#">我的精品</a>
            </li>
            <li>
                <a href="/jsp/studentLogin/studentDouble.jsp">双选会</a>
            </li>
            <li>
                <a href="#">论文管理</a>
                <img src="/image/teacherLogin/home/hot.png" style="width: 21px;height: 10px;vertical-align: top;padding-top: 10px">
            </li>
        </ul>
        <div class="btm"></div>
        <!-- 头部右边 -->
        <!-- 个人头像 -->
        <div class="touxiangBox">
            <a href="#">
                <%
                    String studentImg=studentCourseDao.selectStudentImg(phone);
                %>
                <img src="/image/head/<%=studentImg%>.png" id="touxiang">
            </a>
            <span class="touxiangBoxName"><%=name%></span>
            <!-- 点击弹出列表框 -->
            <div id="people" style="height: 230px;">
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
            <%
                String messageNum=messageDao.selectMessageNum(studentCourseDao.selectStudentId(phone));
                if (messageNum!=null){
            %>
                    <span class="newsProvide"><%=messageNum%></span>
            <%  }%>


            <!-- 消息通知弹出框 -->
            <div id="news">
                <span class="newsTitle">暂无新通知</span>
                <div class="newsMessage">
                    <%
                        List<Message> messages=messageDao.getCallMessageAll(studentCourseDao.selectStudentId(phone));
                        for (int j=0;j<messages.size();j++) {
                            Message message = messages.get(j);
                    %>
                    <div class="newsMessageCall">
                        <span style="color: red;">● </span>
                        <span>你的老师向你发送了一条催交通知</span>
                        <span class="newsMessageCallDate"><%=message.getSystemDate()%></span>
                    </div>
                    <%}%>
                </div>
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
    <%--中间部分--%>
    <div>
        <%--中间部分导航栏--%>
        <div class="contentTop">
                <span class="span2">全部课程</span>
                <!-- 右边按钮 -->
                <div class="contentTopRight centerTop">
                    <!-- 加入课程 -->
                    <div class="clickOpen">
                        <a href="#" >
                            <div class="release addBtn">
                                <span class="span3" onclick="centerTopAddCourse()">+ 加入课程</span>
                            </div>
                        </a>
                    </div>
                    <!-- 归档和排序 -->
                    <a href="#" type="button" name="popBox5" value="弹出框" onclick="popBox5()"><img src="/image/teacherLogin/home/guidang.png" class="guidang"></a>
                    <a href="#" type="button" name="popBox5" value="弹出框" onclick="popBox5()"><img src="/image/teacherLogin/home/paixu.png" class="paixu"></a>
                </div>
            </div>
        <%--中间部分课程显示--%>
        <div class="contentMain">
            <%
                List<Course> selectCourseAll=studentCourseDao.getSelectNotFileCourseAll(phone);
                Course selectCourse=null;
                for (int i=0;i<selectCourseAll.size();i++){
                    selectCourse=selectCourseAll.get(i);
            %>
            <div class="createCourse">
                <img src="/image/teacherLogin/home/<%=selectCourse.getImg()%>.png" class="picture">
                <div class="span4">
                    <a href="/jsp/studentLogin/studentCourseDetail.jsp?courseId=+<%=selectCourse.getId()%>"><%=selectCourse.getName()%></a><br>
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
                        TeacherTaskDao teacherTaskDao=new TeacherTaskDaoImp();
                        List<Task> taskList=teacherTaskDao.getCourseTaskAll(selectCourse.getId());
                        for (int j=0;j<taskList.size();j++){
                            Task courseTaskShow=taskList.get(j); %>
                    <a href="/jsp/studentLogin/studentProvideTask.jsp?taskId=<%=courseTaskShow.getId()%>&studentId=<%=studentCourseDao.selectStudentId(phone)%>" >
                        <%=courseTaskShow.getName()%>
                    </a>
                    <%}%>
                </div>
                <div class="caseDown">
                    <img src="/image/teacherLogin/home/chengyuan.png" class="chengyuan">
                    <img src="/image/teacherLogin/home/more-vertical.png" style="width: 10px; height: 17px;float: right;margin-top: 12px">
                    <a href="#" class="txt1">更多</a>
                    <ul class="addCourseMore" >
                        <li class="moreList">
                            <a href="#"  style="width: 100%;display: inline-block;color: black;" type="button" name="popBox2" value="弹出框" onclick="popBox2Add('<%=selectCourse.getName()%>','<%=selectCourse.getId()%><%=phone%>')">退课</a>
                        </li>
                        <li class="moreList">
                            <a href="#"  style="width: 120px;display: inline-block;color: black;" type="button" name="popBox3" value="弹出框" onclick="studentFileCourse('<%=selectCourse.getId()%><%=phone%>')">归档</a>
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
            <!-- 加入课程 -->
            <div class="createCourseDiv">
                <img src="/image/teacherLogin/home/create-course.png" class="picture">
                <div class="create" name="popBox" value="弹出框" onclick="centerTopAddCourse()">
                    <a href="#" >
                        <img src="/image/teacherLogin/home/jiahao.png"><br>
                        <span style="margin-left: -22px;">加入课程</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<%--弹出框--%>
<div>
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
                <a href="javascript:void(0)" onclick="sureDeleteCourse(<%=phone%>)">
                    <button class="join" class="close">删除</button>
                </a>
            </div>
        </div>
    </div>
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
                        List<Course> courseList1=studentCourseDao.getSelectCourseAll(phone);
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
            <%--归档管理--%>
            <div class="list2" style="display: none;padding: 0px 26px;height: 360px;overflow: auto" >
                <%--加入的课程归档--%>
                    <%
                        List<Course> fileCourseList= studentCourseDao.getSelectFileCourseAll(phone);
                        Course fileCourse=null;
                        for (int i=0;i<fileCourseList.size();i++){
                            fileCourse=fileCourseList.get(i);
                    %>
                <div class="fileCourse">
                    <div style="width: 300px;height: 110px">
                        <a href="#"><img src="/image/teacherLogin/home/<%=fileCourse.getImg()%>.png" style="width: 300px;height: 110px;"></a>
                    </div>
                    <span class="title1"><%=fileCourse.getName()%></span>
                    <span class="title2">角色：教师</span>
                    <div class="menu">
                        <a href="#"><img src="/image/teacherLogin/home/kczt_23.png" class="kczt_23"></a>
                        <!-- 弹出菜单 -->
                        <ul class="menuHover">
                            <div class="menuUl">
                                <li>
                                    <a href="#" style="display: inline-block; width: 120px;" type="button" name="popBox6" value="弹出框" onclick="popBox6('<%=fileCourse.getId()%><%=phone%>')">恢复</a>
                                </li>
                                <li>
                                    <a href="#" style="display: inline-block;width: 120px;" type="button" <%--name="popBox2"--%> value="弹出框" onclick="popBox2Add('<%=fileCourse.getName()%>','<%=fileCourse.getId()%><%=phone%>')">删除</a>
                                </li>
                            </div>
                        </ul>
                    </div>
                </div>
                    <%}%>
            </div>
        </div>
    </div>
    <!-- 恢复归档课程弹出框 -->
    <!-- 遮罩层 -->
    <div id="popLayer6"></div>
    <!-- 弹出框 -->
    <div id="popBox6">
        <!-- 恢复提醒框 -->
        <div class="content">
            <div class=" delete">
                <p class="tip">要恢复此课程么？</p>
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
    <!-- 归档课程弹出框 -->
    <!-- 遮罩层 -->
    <div id="popLayer3"></div>
    <!-- 弹出框 -->
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
                <a href="javascript:void(0)" onclick="returnFileBtn()">
                    <button class="exit" class="close">
                        取消</button></a>
                    <a href="javascript:void(0)" onclick="sureFileOwnCourse()">
                        <button class="join" class="close">
                            归档</button>
                    </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
