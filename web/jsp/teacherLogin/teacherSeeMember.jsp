<%@ page import="dao.UserTeacherDao" %>
<%@ page import="dao.UserTeacherDaoImpl" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDao" %>
<%@ page import="dao.teacherDao.SeeMember.SeeMemberDaoImp" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.User" %>
<%@ page import="dao.teacherDao.TeacherCourse" %>
<%@ page import="dao.teacherDao.TeacherCourseImp" %><%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/14
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/teacherLogin/teacherSeeMember.css" rel="stylesheet"  type="text/css">
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" rel="stylesheet" src="/js/jquery-ui.js"></script>
</head>
<body>
<%
    String courseName= request.getParameter("courseName").trim();
    String courseId= request.getParameter("courseId").trim();
    String phone= (String) session.getAttribute("phone");
    TeacherCourse teacherCourse=new TeacherCourseImp();
    int studentNUm=teacherCourse.selectCourseId(courseId);
    UserTeacherDao userTeacherDao=new UserTeacherDaoImpl();
    SeeMemberDao seeMemberDao=new SeeMemberDaoImp();
%>
<div class="main">
    <!--头部-->
    <div class="top">
        <!-- logo -->
        <div class="topLeft">
            <a href="/jsp/teacherLogin/teacherLoginOne.jsp" class="logo">
                <img src="/image/teacherLogin/seeStudent/fanhui.png" >
            </a>
            <a href="#" class="span">
                <span > <%=courseName%></span>
            </a>
        </div>
        <!-- 导航栏 -->
        <div class="topNavigation">
            <ul>
                <li class="topNavigationMember">
                    <a href="#">成员</a>
                </li>
                <li>
                    <a href="#">分组</a>
                </li>
                <li>
                    <a href="#">成绩</a>
                </li>
            </ul>
        </div>
        <div class="topRight">
            <!--工具-->
            <div class="tool1">
                <a href="#">
                    <img src="/image/teacherLogin/seeStudent/tool.png" class="tool_icon">
                </a>
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
            <!-- 头部右边 -->
            <!-- 个人头像 -->
            <div class="touxiangBox">
                <a href="#">
                    <%
                        String teacherImg=seeMemberDao.selectTeacherImg(phone);
                    %>
                    <img src="/image/head/<%=teacherImg%>.png" id="touxiang">
                </a>
                <!-- 点击弹出列表框 -->
                <div id="people">
                    <ul>
                        <li class="item4">
                            <a href="#" ><img src="/image/teacherLogin/home/vip.png" class="vip"> <span style="margin-left: 40px;">开通VIP</span></a>
                        </li>
                        <li class="item4">
                            <a href="#" ><img src="/image/teacherLogin/home/mechanismNo.png" class="mechanismNo"> <span style="margin-left: 70px">机构账号绑定</span></a>
                        </li>
                        <li class="item4">
                            <a href="#" ><img src="/image/teacherLogin/home/seting.png" class="vip"> <span style="margin-left: 40px;">个人设置</span></a>
                        </li>
                        <li class="item4">
                            <a href="#" ><img src="/image/teacherLogin/home/recode_2.png" class="recode_2"> <span style="margin-left: 40px;">邀请记录</span></a>
                        </li>
                        <li class="item4">
                            <a href="#" ><img src="/image/teacherLogin/home/return.png" class="vip"> <span style="margin-left: 40px;">退出登录</span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 中部 -->
    <div class="content">
        <div class="contentTop">
            <!-- 左边按钮 -->
            <div class="contentTopLeft">
                <a href="#">
                    <div class="join" >
                        <span class="span3">导入成员</span>
                    </div>
                </a>
                <div class="xiazai">
                    <img src="/image/teacherLogin/seeStudent/xiazai.png">
                </div>
                <a href="#" class="download">下载成员信息</a>
                <div class="biao">
                    <img src="/image/teacherLogin/seeStudent/biao.png">
                </div>
                <a href="#" class="table">成员退课记录
                </a>
            </div>
            <!-- 右边查询框 -->
            <div class="textBox">
                <input  placeholder="姓名、学号" type="text" class="input">
                <a href="#">
                    <img src="/image/teacherLogin/seeStudent/se_s.png">
                </a>
            </div>
        </div>
    </div>
    <!-- 表格部分 -->
    <div class="contentMain">
        <div  class="contentMainBox" >
            <!-- 左边菜单 -->
            <div class="contentMainLeft">
                <ul class="navigation">
                    <li class="choose" style="border-top-left-radius: 10px;">教学团队（1）
                    </li>
                    <li>全部学生(学生<span><%=studentNUm%></span>)</li>
                </ul>
            </div>

            <!-- 右边显示内容框 -->
            <div class="contentMainRight">
                <div class="list2 " >
                    <div class="rightTopStudent">
                        <span class="span1">教学团队（老师1）</span>
                        <a href="#">
                            <div class="joinTeacher" >
                                <img src="/image/teacherLogin/seeStudent/tianjia.png" class="tianjia">
                                <span class="span2">添加助教/老师</span>
                            </div>
                        </a>
                    </div>
                    <div class="teacher">
                        <img src="/image/head/<%=teacherImg%>.png" class="touxiang1">
                        <%
                            String teacherName=userTeacherDao.queryName(phone);
                        %>
                        <span class="span4"><%=teacherName%></span>
                        <span class="span5"><%=phone%>&nbsp;&nbsp;&nbsp;（管理员）</span>
                        <a href="#">
                            <img src="/image/teacherLogin/seeStudent/opt1.png" class="opt1">
                        </a>
                        <a href="#">
                            <img src="/image/teacherLogin/seeStudent/sixin.png" class="sixin">
                        </a>
                    </div>
                </div>

                <!-- 学生表格界面 -->
                <div class="list2"  style="display: none;" >
                    <div class="rightTopStudent">
                        <span class="span1">全部学生（学生<%=studentNUm%>）</span>
                        <span class="span7"> 不允许退课</span>
                        <!-- 开关按钮 -->
                        <div class="switch-btn">
                            <input type="checkbox" class="hidden-checkbox" name="" value="">
                            <span class="switch-area"></span>
                            <span class="switch-toggle"></span>
                        </div>
                        <span class="span7">人数限制 </span>
                        <div class="checkBox checkbox2">
                            <input type="checkbox" >
                        </div>

                    </div>
                    <div class="rightTop" style="background-color: white;border-bottom: 1px solid gainsboro;">
                        <div class="checkBox allCheck">
                            <input type="checkbox"  id="selectAll">
                        </div>
                        <span id="pp">本页全选 </span>
                        <a href="#">
                            <div class="delete" id="deleteMember">
                                <span class="span6" >删除成员</span>
                            </div>
                        </a>
                        <a href="#">
                            <div class="send" id="sendMessage">
                                <span class="span6" >群发私信</span>
                            </div>
                        </a>
                    </div>
                    <div class="contentTable">
                        <table border rules=cols cellspacing=0>
                            <%--学生--%>
                            <%
                                List<User> userList=seeMemberDao.getSelectUser(courseId);
                                for (int i=0;i<userList.size();i++){
                                    User user=userList.get(i);
                            %>
                            <tr>
                                <td class="checkBox">
                                    <input type="checkbox" name="gg" class="tableCheck">
                                </td>
                                <td>
                                    <img src="/image/head/<%=user.getImg()%>.png" class="touxiang2">
                                </td>
                                <td><%=user.getId()%></td>
                                <td><%=user.getName()%></td>
                                <td><%=user.getPhone()%></td>
                                <td><%=user.getSystemDate()%></td>
                                <td>
                                    <a href="#">
                                        <img src="/image/teacherLogin/seeStudent/opt1.png" class="opt1">
                                    </a>
                                    <a href="#">
                                        <img src="/image/teacherLogin/seeStudent/sixin.png" class="sixin">
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                            <%--老师--%>
                            <%
                                List<User> userList1=seeMemberDao.getSelectUserTeacher(courseId);
                                for (int i=0;i<userList1.size();i++){
                                    User user1=userList1.get(i);
                            %>
                            <tr>
                                <td class="checkBox">
                                    <input type="checkbox" name="gg" class="tableCheck">
                                </td>
                                <td>
                                    <img src="/image/head/<%=user1.getImg()%>.png" class="touxiang2">
                                </td>
                                <td><%=user1.getPhone()%></td>
                                <td><%=user1.getName()%></td>
                                <td><%=user1.getPhone()%></td>
                                <td><%=user1.getSystemDate()%></td>
                                <td>
                                    <a href="#">
                                        <img src="/image/teacherLogin/seeStudent/opt1.png" class="opt1">
                                    </a>
                                    <a href="#">
                                        <img src="/image/teacherLogin/seeStudent/sixin.png" class="sixin">
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/teacherLogin/teacherSeeMember.js"></script>
</body>
</html>
