<%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/5/8
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>双选会</title>
    <link rel="stylesheet" href="/css/index/doubleElection.css" type="text/css">
    <link rel="stylesheet" href="/css/index/indexTop.css" type="text/css">
</head>
<body>
<!--头部-->
<div class="top">
    <!--头部左边lOGO-->
    <div class="topLogo">
        <img src="/image/logo.png">
    </div>
    <!--头部中间导航栏-->
    <div class="topNav">
        <a href="/index.jsp">首页</a>
        <a href="/jsp/index/huaWen.jsp" id="huaWen">
            <img src="/image/summary/huawenmuke.png"/>
        </a>
        <a href="/jsp/index/teacherTraining.jsp">教师培训</a>
        <a href="/jsp/index/doubleElection.jsp">
            双选会
            <img src="/image/summary/hot.png" style="width: 21px;height: 10px;vertical-align: top;padding-top: 10px">
        </a>
        <div class="topNavSolution">
            <a href="#">解决方案</a>
            <ul class="topNavSolutionHover">
                <div class="topNavSolutionUl">
                    <li>
                        <a>申请机构版</a>
                    </li>
                    <li>
                        <a>本地化部署</a>
                    </li>
                </div>
            </ul>
        </div>
        <a href="/jsp/index/help.jsp">帮助中心</a>
        <div class="topNavMore">
            <a href="#">
                更多
                <img src="/image/nologin/ic_shuangxuan_arrow.png" style="vertical-align: middle;box-sizing: border-box;padding-left: 4px">
            </a>
            <ul class="topNavMoreHover">
                <div class="topNavMoreUl">
                    <li>
                        <a>会员权益</a>
                    </li>
                    <li>
                        <a>产品动态</a>
                    </li>
                </div>
            </ul>

        </div>
    </div>
    <!--头部右边按钮-->
    <div class="topBtn">
        <a href="/jsp/login.jsp" class="topBtnLogin">登录</a>
        <a href="/jsp/register.jsp" class="topBtnRegister">注册</a>
    </div>
</div>

<!--中部主体-->

<!-- 头部图片 -->
<div class="contentTop">
    <h1 class="h1"><b>2020毕业生在线双选会正式开启</b></h1>
</div>
<!-- 招聘展示 -->
<div class="contentMain">
    <div class="contentMainOne">
        <div class="contentMainOneLeft">
            <img src="/image/nologin/ic_shuangxuan_company.png" alt="" class="image">
            <h1 class="text">企业招聘</h1>
            <!-- 列表展示详细信息 -->
            <ul class="ul">
                <li>在线发布岗位，资料，交流，快速收取简历</li>
                <li> 在线宣讲企业，与高校学子在线直播互动</li>
                <li> 面向学校/全省/全国发布招聘专场</li>
                <li> 企业品牌，人才梯队建设从这里起航</li>
            </ul>
            <!-- 登录注册按钮 -->
            <a href="#"><div class="register">
                <span class="span1">企业注册入口</span>
            </div></a>
            <a href="#"><div class="login">
                <span class="span2">登录入口</span>
            </div></a>
        </div>
        <div class="contentMainOneRight">
            <img src="/image/nologin/ic_shuangxuan_college.png" alt="" class="image">
            <h1 class="text">学校就业中心</h1>
            <ul class="ul">
                <li>申请开通双选会后台管理，开放企业招聘通道 </li>
                <li>在线审核企业宣讲申请，企业招聘，宣讲，岗位发布全过程管理</li>
                <li> 本校学子应聘数据全过程管理和统计，提升就业率</li>
                <li> 实时监控企业和学生的双选会直播和录像，可留存，可追溯</li>
            </ul>
            <a href="#"><div class="register">
                <span class="span1">企业注册入口</span>
            </div></a>
            <a href="#"><div class="login">
                <span class="span2">登录入口</span>
            </div></a>
        </div>
    </div>
    <div class="contentMainTwo">
        <div class="contentMainOneLeft">
            <img src="/image/nologin/ic_shuangxuan_student.png" alt="" class="image">
            <h1 class="text">学生应聘</h1>
            <ul class="ul">
                <li>实时获取企业信息，参与企业宣讲，在线与企业实时互动</li>
                <li> 在线查看用人单位招聘岗位，一键投递简历</li>
                <li> 面向学子在线招聘专场，快捷方便；定向投递，专业高效</li>
                <li> 学校把关安全放心；实践历练从这里开始</li>
            </ul>
            <a href="#"><div class="register">
                <span class="span1">企业注册入口</span>
            </div></a>
            <a href="#"><div class="login">
                <span class="span2">登录入口</span>
            </div></a>
        </div>
        <div class="contentMainOneRight">
            <img src="/image/nologin/ic_shuangxuan_government.png" alt="" class="image">
            <h1 class="text">省教育厅/资源部</h1>
            <ul class="ul">
                <li>面向全省高校，统一组织，管理
                </li>
                <li> 实时监控高校，企业和学生的就业数据和过程</li>
                <li> 大数据统计分析企业，学校和学生的就业情况</li>
                <li>学校和学生的就业情况 </li>
            </ul>
            <a href="#"><div class="register">
                <span class="span1">企业注册入口</span>
            </div></a>
            <a href="#"> <div class="login">
                <span class="span2">登录入口</span>
            </div></a>
        </div>
    </div>
</div>

<!--底部-->
<div class="bottom">
    <div class="bottomConnection">
        <a href="#">关于我们</a>
        <a href="#">联系我们</a>
        <a href="#">服务条款</a>
        <a href="#">浏览器下载</a>
        <a href="#">更新动态</a>
    </div>
    <p>Copyright © 2014 ketangpai.com All Rights Reserved. 京ICP备14023276号-4</p>
    <p>京公网安备11011402010566</p>
</div>
</body>
</html>
