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
    <title>教师培训</title>
    <link rel="stylesheet" href="/css/index/teacherTraining.css" type="text/css">
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
<!-- 中部 -->
<div class="content">
    <!--背景图片-->
    <div class="contentTop">
        <img src="/image/home-swiper/banner5.png" class="banner5" >
    </div>
    <!-- 中部主体 -->
    <div class="contentMain">
        <!-- 导航标题栏 -->
        <div class="contentMainTop">
            <div class="mainTopNav">
                <div class="title1">
                    <a href="#">名师培训课</a>
                </div>
                <div class="title2">
                    <a href="#">名师示范课</a>
                </div>
                <div class="title4"> </div>
                <div class="title3"></div>
            </div>
        </div>
        <!-- 课程展示如下：包括10门课程 -->
        <div class="contentMainOne">
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/baikang.jpg" class="teacherPicture">
                <h1 class="span1">远程教学资源制作工具及方法</h1>
                <span class="span2">2月9日（周日）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">白康 华北电力大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/liuheng.png" class="teacherPicture">
                <h1 class="span1">课件设计及制作的硬核知识</h1>
                <span class="span2">2月10日（周一）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">刘蘅 重庆工业职业技术学院</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/zhangyuewen.jpg" class="teacherPicture">
                <h1 class="span1">本科、研究生互动教学实践经验</h1>
                <span class="span2">2月15日（周六）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">张跃文 河南中医药大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/lihe.jpg" class="teacherPicture">
                <h1 class="span1">基于课堂派的高数混合式教学</h1>
                <span class="span2">2月18日（周二）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">李鹤 北京邮电大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/chenyuanming.jpg" class="teacherPicture">
                <h1 class="span1">基于课堂派混合式教学模式探讨</h1>
                <span class="span2"> 2月20日（周四）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">陈元明 桂林电子科技大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/zhangjingmiao.jpg" class="teacherPicture">
                <h1 class="span1">疫情下的线上和线下混合式教学</h1>
                <span class="span2">2月21日（周五）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">  张妙静 广西师范大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/wangyuanxiu.jpg" class="teacherPicture">
                <h1 class="span1">基于课堂派在线课程设计与教学</h1>
                <span class="span2">2月24日（周一）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">王元秀 济南大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/xiaole.jpg" class="teacherPicture">
                <h1 class="span1">在线直播模式如何做好翻转课堂 </h1>
                <span class="span2">2月25日（周二）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">肖乐 河南工业大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/jinguozheng.png" class="teacherPicture">
                <h1 class="span1">巧用课堂派，提升课堂教学效率</h1>
                <span class="span2">2月26日（周三）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">金国正 华东政法大学</span>
                </div>
            </div>
            <div class="contentMainOne_Left">
                <img src="/image/player.png" class="player">
                <img src="/image/teacher/liuxueyan.png" class="teacherPicture">
                <h1 class="span1">远程教学小组功能教学经验分享</h1>
                <span class="span2">2月27日（周四）15:00-16:00</span>
                <div class="teacherWord">
                    <span class="span2">刘雪燕 嘉兴学院</span>
                </div>
            </div>
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
