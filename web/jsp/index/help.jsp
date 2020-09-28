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
    <title>帮助中心</title>
    <link rel="stylesheet" href="/css/index/help.css" type="text/css">
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
        <a href="#">帮助中心</a>
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
    <!--中部-->
    <!-- 搜索框 -->
    <div class="contentTop">
        <div class="search">
            <input class="txt" placeholder="搜索您的问题或关键词，例如：作业、班级、邀请码" type="text">
            <div class="searchButton">
                <span class="span">搜索</span>
            </div>
        </div>
    </div>
    <!-- 视频 -->
    <div class="contentMian">
        <div class="contentMianA">
            <div class="title">
                帮助视频
            </div>
            <div class="videoLeft">
                <video src="/video/kssh.mp4" controls width="551px" height="313px"></video>
                <p>好老师更好的课堂-快速入门</p>
            </div>
            <div class="videoRight">
                <video src="/video/workwechat.mp4" controls width="551px" height="313px"></video>
                <p>在线教学+课堂派企业微信版</p>
            </div>
        </div>
    </div>
    <!-- 课前课中课后 -->
    <div class="contentCenter">
        <div class="contentCenterOne">
            <img src="/image/help/classbeforebig.png" class="classbeforebig">
            <img src="/image/help/classbefore.png"
                 class="classbefore">
            <span class="keqian">课前</span>
            <table class="table1">
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">创建课程</a></td>
                    <td><a href="#"><img src="/image/help/play.png">课间互动-创建互动试题</a></td>
                </tr>
                <tr>
                    <td>
                        <a href="#"><img src="/image/help/play.png">备课</a>
                    </td>
                    <td>
                        <a href="#"><img src="/image/help/play.png">课件码&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            <a href="#"><img src="/image/help/play.png">成员管理</a></a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="contentCenterTwo">
            <img src="/image/help/classnew.png">
            <span class="keqian">课中</span>
            <table class="table2">
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">考勤</a></td>
                    <td style="width: 120px;"><a href="#"><img src="/image/help/play.png">课间互动-上课</a></td>
                    <td><a href="#"><img src="/image/help/play.png">表现</a></td>
                </tr>
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">提问</a></td>
                    <td><a href="#"><img src="/image/help/play.png">抢答</a></td>
                    <td><a href="#"><img src="/image/help/play.png">星星卡</a></td>

                </tr>
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">直播</a></td>
                    <td><a href="#"><img src="/image/help/play.png">录屏</a></td>
                    <td></td>
                </tr>
            </table>
            <img src="/image/help/classbig.png" class="classbig">
        </div>
        <div class="contentCenterThree">
            <img src="/image/help/classaffterbig.png" class="classbeforebig">
            <img src="/image/help/classaffter.png"
                 class="classbefore">
            <span class="keqian">课后</span>
            <table class="table1">
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">作业</a></td>
                    <td><a href="#"><img src="/image/help/play.png">测试</a></td>
                    <td><a href="#"><img src="/image/help/play.png">资料</a></td>
                </tr>
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">话题</a></td>
                    <td><a href="#"><img src="/image/help/play.png">成绩</a></td>
                    <td><a href="#"><img src="/image/help/play.png">数据分析</a></td>

                </tr>
                <tr>
                    <td><a href="#"><img src="/image/help/play.png">私信</a></td>
                </tr>
            </table>
        </div>
        <div class="download">
                <span class="txtDownload">
                    <a href="#"> 批量下载帮助视频</a>
                </span>
        </div>
        <div class="code">
            <span class="txtCode">提取码：xgzw</span>
        </div>
    </div>
    <!-- 遇到问题 -->
    <div class="contentDown">
        <div class="contentDownA">
            <div class="problemTitle">
                <span>您是否遇到这些问题？</span>
            </div>
            <div class="click">
                <span>点击查看<a href="#">《课堂派帮助手册》</a></span>
            </div>
            <!-- 展示 -->
            <div class="contentDownOne">
                <div class="contentDownTopLeft">
                    <span class="span1">我是老师/助教</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">如何在备课区里，新建“互动课件” </a></td>
                        </tr>
                        <tr>
                            <td><a href="#">分段随机生成新试卷</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何批量添加试题</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"> 如何邀请助教帮助管理班级</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">在线批阅支持哪些格式</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何更改学生名片</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何批阅作业</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何登记纸张作业</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何使用互动PPT</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">在线批阅支持哪些格式？</a></td>
                        </tr>

                    </table>
                </div>
                <div class="contentDownTopCenter">
                    <span class="span1">我是学生</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">如何查看成绩 </a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何签到</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何加入小组学习</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"> 如何参与互动</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">学生作业都有哪些状态</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何上传作业</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何回复老师的私信</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"> 如何加入班级</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">老师批阅作业后，重新提交作业怎么...</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"></a></td>
                        </tr>

                    </table>
                </div>
                <div class="contentDownTopRight">
                    <span class="span1">对功能有疑问</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">将学生作业“未交”状态变更为 “已交”</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何将试卷分享给其他同事？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">互动PPT，自动播放，怎么办？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"> 互动PPT，如何插入视频</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">修改了PPT，如何变更到互动</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">忘记密码怎么办？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">测试的客观题答案修改</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">通知信息如何批量忽略</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何删除学生？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">老师如何查看成绩单？</a></td>
                        </tr>

                    </table>
                </div>
            </div>
            <div class="contentDownTwo">
                <div class="contentDownTopLeft">
                    <span class="span1">课堂派文库使用</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">什么是课堂派积分？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">如何获得课堂派积分？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">文档审核规则</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">资源上传协议</a></td>
                        </tr>


                    </table>
                </div>
                <div class="contentDownTopCenter">
                    <span class="span1">课堂派微信版</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">如何关注课堂派微信？ </a></td>
                        </tr>
                        <tr>
                            <td><a href="#">微信接收不到课堂派任何消息？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#">微信端找回密码？</a></td>
                        </tr>
                        <tr>
                            <td><a href="#"> 微信如何使用6位邀请码</a></td>
                        </tr>


                    </table>
                </div>
                <div class="contentDownTopRight">
                    <span class="span1">其他</span>
                    <table class="table3">
                        <tr>
                            <td><a href="#">使用课堂派安排整学期实习</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- 反馈问题 -->
    <div class="feedbackProblem">
        <div class="contentDownA">
            <span class="span2">反馈问题</span>
            <span class="span3">没有找到想要的答案？填入你的问题，我们会尽快反馈</span>
            <div class="type">
                <span class="span4">反馈类型</span>
                <div class="selectHelp">
                    <select class="select">
                        <option value="使用帮助">使用帮助</option>
                        <option value="对课堂派的建议">对课堂派的建议</option>
                        <option value="发现了软件bug">发现了软件bug</option>
                        <option value="其他">其他</option>
                    </select>
                </div>
            </div>
            <div class="emal">
                <span class="span4">您的邮箱</span>
                <input class="select" placeholder="请输入邮箱地址" type="text">
            </div>
            <div class="problem">
                <span class="span4">反馈的问题</span>
                <input class="input" placeholder="这里输入你反馈的问题..." type="text">
            </div>
            <div class="button">
                <span class="span5" >发送反馈</span>
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
