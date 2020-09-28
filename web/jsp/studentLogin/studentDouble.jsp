<%@ page import="dao.studentDao.StudentCourseDao" %>
<%@ page import="dao.studentDao.studentCourseDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/22
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生登录-双选会</title>
    <link rel="stylesheet" type="text/css" href="/css/studentLogin/studentDouble.css">
</head>
<body>
<%
    String name= (String) session.getAttribute("name");
    String phone= (String) session.getAttribute("phone");
    StudentCourseDao studentCourseDao=new studentCourseDaoImp();
%>
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
            <a href="#">双选会</a>
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
<%--中间内容--%>
<div class="content-banner">
    <div class="banner-txt">
        重庆理工大学 &nbsp;&nbsp;毕业生线上双选会
        <br>暨重点企业网络专场招聘会
    </div>
    <div class="banner-search">
        <input type="text" placeholder="请输入企业、岗位名称" class="search-input">
        <button  type="button" class="search-btn">搜 索</button>
    </div>
</div>
<!-- 内容-->
<div class="list-content">
    <div class="list-content-top" >
        <ul>
            <li><a>招聘会列表</a></li>
            <li><a>岗位列表</a></li>
            <li><a>我的投递</a></li>
        </ul>
    </div>
    <div class="tab-content">
        <ul>
            <li class="active">全部(0)</li>
            <li class="nobegin">未开始(0)</li>
            <li class="begining">进行中(0)</li>
            <li class="end">已结束(0)</li>
            <li  style="float: right" class="student-active"><a>学生认证 &gt;</a></li>
        </ul>
        <div class="tab-item">
            <div class="meet-list">
                <a href=" ">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">测试</div>
                            <div class="status">共0个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p>宣讲会时间</p>
                            <div class="clearfix" style="margin-top:4px">
                                <span class="time">2020/03/26 00:00-00:00</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京深度制耀科技有限公司
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">北京学策教育科技有限公司（爱培优）招聘会</div>
                            <div class="status ">共10个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p style="color: #5F6368;">宣讲会时间</p>
                            <div class="clearfix" style="margin-top:6px">
                                <span class="time">2020/03/26 19:00-22:00</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京学策教育科技有限公司
                        </div>
                    </div>
                </a>
                <a href=" ">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">课堂派招聘会</div>
                            <div class="status">共0个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p style="color: #5F6368;">宣讲会时间</p>
                            <div class="clearfix" style="margin-top:6px">
                                <span class="time">2020/03/26 19:00-22:00</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京爱课互动有限公司
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">北京深度制耀科技有限公司</div>
                            <div class="status">共3个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p style="color: #5F6368;">宣讲会时间</p>
                            <div class="clearfix" style="margin-top:6px">
                                <span class="time">2020/03/26 19:45-22:45</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京深度制耀科技有限公司
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">北京灵犀微光科技有限公司招聘会</div>
                            <div class="status">共5个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p style="color: #5F6368;">宣讲会时间</p>
                            <div class="clearfix" style="margin-top:6px">
                                <span class="time">2020/03/26 19:30-22:30</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京灵犀微光科技有限公司
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="meeting-card">
                        <div class="header">
                            <div class="company">北京力拓飞远科技有限公司招聘会</div>
                            <div class="status">共6个招聘岗位</div>
                        </div>
                        <div class="card-body">
                            <p style="color: #5F6368;">宣讲会时间</p>
                            <div class="clearfix" style="margin-top:6px">
                                <span class="time">2020/03/26 19:15-22:15</span>
                                <span class="more">查看更多</span>
                            </div>
                        </div>
                        <div class="card-footer">
                            北京力拓飞远科技有限公司
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
