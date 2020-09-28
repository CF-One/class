<%--
  Created by IntelliJ IDEA.
  User: Changxin
  Date: 2020/4/27
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
      <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.css">
      <link rel="stylesheet" href="https://unpkg.com/swiper/css/swiper.min.css">
      <script src="https://unpkg.com/swiper/js/swiper.js"> </script>
      <script src="https://unpkg.com/swiper/js/swiper.min.js"> </script>
      <link rel="stylesheet" href="css/index.css" type="text/css">
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
  <%--中间内容--%>
  <div class="home-page">
    <!--    轮播-->
    <div class="page-carousel">
      <div class="swiper-container  swiper-container1">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <a href="#"><div class="slide-item slide-item-1" ></div></a>
          </div>
          <div class="swiper-slide">
            <a href="#"><div class="slide-item slide-item-2" ></div></a>
          </div>
          <div class="swiper-slide">
            <a href="#" ><div class="slide-item slide-item-3" ></div></a>
          </div>
          <div class="swiper-slide">
            <a href="#"><div class="slide-item slide-item-4" ></div></a>
          </div>
          <div class="swiper-slide">
            <a href="#"><div class="slide-item slide-item-5" ></div></a>
          </div>
          <div class="swiper-slide">
            <a href="#"><div class="slide-item slide-item-6" ></div></a>
          </div>
        </div>
        <!-- 分页器 -->
        <div class="swiper-pagination"></div>

      </div>
    </div>

    <!--    视频-->
    <div class="section-video">
      <div class="video-wrap">
        <h2>【专家报告视频会】钟南山、李兰娟、张文宏同台指导学校疫情防控工作</h2>
        <p class="introduction">4月20日下午3点，教育部召开学校疫情防控专家报告视频会， 会议深入贯彻习近平总书记重要指示批示精神和党中央、国务院决策部署， 指导各地各校全面做好学校疫情防控工作…
          <a href="https://mp.weixin.qq.com/s/dGMZOYUzk0cKnIZRirr1AA" target="_blank">&gt;&gt;查看内容</a>
        </p>
        <div class="videobox">
          <video id="video" style="width: 700px"  src="https://assets.ketangpai.com/20200420/0420yiqingedu.mp4" preload="auto" controls=""></video>
        </div>
      </div>
    </div>
    <!-- 列表-->
    <div class="section-2-1">
      <div class="cWidth">
        <div class="summary-box">
          <ul>
            <li>
              <img src="/image/studentLogin/home/li/Whome1.png" alt="错误！找不到图片">
              <h2>极简教学主义</h2>
              <p>无安装，无插件，无需专门学习；掌握简单，三分钟上手；不改变教学习惯，让课堂更精彩，让教学更高效！</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome2.png" alt="">
              <h2>远程直播互动教学</h2>
              <p>一键开启直播，共享电脑屏幕，替代教室投影仪/黑板，像在教室里一样互动教学。直播录像自动保存，可查看课堂直播教学统计和再次回顾学习。</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome3.png" alt="">
              <h2>有趣的课堂互动</h2>
              <p>提供丰富的教学互动创新场景，上传原生PPT课件进行讲解，手机遥控，标记疑问，评论，开启弹幕，抢答，提问，讨论，随时奖励学生表现，让课堂更精彩。</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome4.png" alt="">
              <h2>随堂互动答题</h2>
              <p>随时编辑互动答题：投票、评价、匿名开放、拍照、选择、判断、简答等多种题型，实时分析互动答题情况，一键词云提取学生有效观点，及时检验教学效果</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome5.png" alt="">
              <h2>精准的考勤签到</h2>
              <p>二维码，数字口令，GPS，传统考勤等多种考勤形式；杜绝代签，一键导出考勤记录</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome6.png" alt="">
              <h2>作业神器</h2>
              <p>81种文档格式作业在线展示和批阅，随时随地批改作业；实时查重，精准比对，避免学生抄袭；自动管理成绩，一键下载作业数据</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome7.png" alt="">
              <h2>智能成绩管理</h2>
              <p>汇总考勤、表现、作业、测试、平时成绩、期末成绩；自由调整成绩权重，汇总最终教学成绩，科学权威</p>
            </li>
            <li>
              <img src="/image/studentLogin/home/li/Whome8.png" alt="">
              <h2>教学全过程数据分析</h2>
              <p>教学全过程活动数据自动生成，实时查看课程和学生数据面板和报表，教学数据可留存，可追溯</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!--长条列表-->
    <div class="sections-2-1">
      <div class="cont">
        <div class="let">
          <img src="/image/studentLogin/home/li/s2.png">
        </div>
        <div class="right">
          <img src="/image/studentLogin/home/li/wdian.png">
          <h5>远程直播，在线互动教学</h5>
          <ul>
            <li style="font-size: 18px;color: #333;line-height: 32px;display: flex;align-items: center;">
                            <span style="width: 6px;height: 6px;background-color: #4285F4;border-radius: 50%;margin-right: 10px;">
                            </span>
              无安装，操作简单
            </li >
            <li style="font-size: 18px;color: #333;line-height: 32px;display: flex;align-items: center;">
                            <span style="width: 6px;height: 6px;background-color: #4285F4;border-radius: 50%;margin-right: 10px;">
                            </span>
              在线实时互动，全过程教学统计
            </li>
            <li style="font-size: 18px;color: #333;line-height: 32px;display: flex;align-items: center;">
              <span style="width: 6px;height: 6px;background-color: #4285F4;border-radius: 50%;margin-right: 10px;"></span>
              自动录播，再次回顾，保留教学资产
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="sections2-2">
      <div class="cont">
        <div class="let2-2">
          <img src="/image/studentLogin/home/li/wWhited.png">
          <h1 style="font-size: 28px">精品课程，在线自主学习</h1>
          <p style="margin-bottom: -20px">北大领航，集高校精品课程，免费向社会开放，惠及全球华人</p>
          <p>课堂派教学资源互相共享，打造线上金课，混合金课，共建金课</p>
        </div>
        <div class="rig2">
          <img src="/image/studentLogin/home/li/s3r.png">
        </div>
      </div>
    </div>
    <div class="sections2-3">
      <div class="cont">
        <div class="let">
          <img src="/image/studentLogin/home/li/s4l.png">
        </div>
        <div class="right">
          <img src="/image/studentLogin/home/li/wdian.png">
          <h5 style="color: #333333">混合教学，全过程管理</h5>
          <ul class="last-li">
            <li><span class="ds">课前备课：</span><span>创建课堂，轻松开启教学，发布预习</span></li>
            <li><span class="ds">课中互动：</span><span>上传原生课件，随堂互动答题，提供多种互动创新场景，让课堂活起来</span></li>
            <li><span class="ds">课后巩固：</span><span>随时随地发布话题，测试，作业，在线批阅，实时查重，自动管理教学成绩，教学过程自动分析，可留存，可追溯</span></li>
          </ul>
        </div>
      </div>
    </div>




    <!--   轮播2  -->
    <div class="section8" id=" section-words">
      <h1>媒体报道</h1>
      <p>课堂派深耕教学管理，受到广泛认可</p>
      <!--    轮播-->
      <div class="page-carousel page-carousel2">
        <div class="swiper-container swiper-container2">
          <div class="swiper-wrapper">
            <div class="swiper-slide" data-history="slide1">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>助力智慧课堂：课堂派成为腾讯微校生态战略伙伴--></a>
                </div>
                <div class="mrinfo">7月18日，腾讯微校发布会在北京船山书院如期举行，正式推出以微信校园卡、腾讯校园码为核心的数字校园解决方案——腾讯微校2.0。本次发布会突破传统Q&amp;A的传统模式，现场模拟校园场景，利用“一款非常好用的应用”课堂派进行了现场互动。作为腾讯微校的生态战略伙伴，互动教学品牌课堂派展现了科技时代，智慧课堂所带来的创新和变化。</div>
                <div class="mrbt">
                  <div class="mrtitle">
                    <a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>
            </div>
            <div class="swiper-slide" data-history="slide2">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>课堂派亮相2018中国“互联网+”数字经济峰会--></a>
                </div>
                <div class="mrinfo">4月12日下午教育分论坛，北京大学软件与微电子学院林院长分享了智慧课堂的建设经验：教学资源呈现多样化、课堂形式丰富、如何把学生从玩手机的屏幕聚焦到课堂互动环节等方面。林院长表示，课堂派在研发过程中，学院的一线教师主动参与，把很多丰富的实际教学经验融入研发当中，使整个智慧课堂的建设更具实用性和前瞻性。</div>
                <div class="mrbt">
                  <div class="mrtitle"><a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>
            </div>
            <div class="swiper-slide" data-history="slide3">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>新时代新青年 课堂派创始人陈杰宾的创业梦--></a>
                </div>
                <div class="mrinfo">6月26日，中国共产主义青年团第十八次全国代表大会在人民大会堂开幕。共青团委对福建省驻京团工委点赞，CCTV新闻频道进行了同步报道。分享会上，课堂派创始人陈杰宾作为闽籍创业青年代表，向在京青年创业者分享了课堂派的发展模式以及创业历程。</div>
                <div class="mrbt">
                  <div class="mrtitle"><a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>
            </div>
            <div class="swiper-slide" data-history="slide4">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>【新浪新闻】课堂派云管理颠覆高校传统实习模式--></a>
                </div>
                <div class="mrinfo">用课堂派最大的好处就是在学习的过程中，随时跟老师进行沟通和分享，无论从知识和情感层面都需要倾诉，而课堂派不仅提供跟老师同学交流的机会，还能够获得别人的指导和鼓励，让整个学习过程更加轻松。</div>
                <div class="mrbt">
                  <div class="mrtitle"><a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>

            </div>
            <div class="swiper-slide" data-history="slide5">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>【华北电力大学】“互联网+”让教育发现每一个学生--></a>
                </div>
                <div class="mrinfo">“课堂上教师要及时了解学生对内容的掌握程度，课下学生也希望教师能对自己的学习困难进行及时的指导。”在以前，这些实现起来比较困难的事情，“课堂派”可以让这一切变得轻而易举。</div>
                <div class="mrbt">
                  <div class="mrtitle"><a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>
            </div>
            <div class="swiper-slide" data-history="slide6">
              <div class="mrli mainli" len="6" index="0">
                <div class="mrtitle">
                  <a>【网易教育】课堂派：教师指向型在线教育平台新思路--></a>
                </div>
                <div class="mrinfo">目前，教育资源渐趋雷同并竞相抢占市场份额，在线教育发展进入瓶颈期。可喜的是，课堂派的出现打破了这一随大流的现有局面，致力于教师指向型在线教育平台开发，为在线教育市场发展提出新思路。</div>
                <div class="mrbt">
                  <div class="mrtitle"><a class="more" href="#" target="_blank">查看详情</a></div>
                </div>
                <div class="rigthborer"></div>
              </div>
            </div>
          </div>
          <div class="swiper-button-prev"></div><!--左箭头。如果放置在swiper-container外面，需要自定义样式。-->
          <div class="swiper-button-next"></div><!--右箭头。如果放置在swiper-container外面，需要自定义样式。-->
          <!-- 分页器 -->
          <div class="swiper-pagination swiper-pagination2" ></div>

        </div>
      </div>


      <!--学校-->
      <div class="section9">
        <div class="cWidth1">
          <h1><span>6000+</span>学校正在使用课堂派</h1>
        </div>
        <div class="all">
          <div class="onelogos"><img src="/image/slogo/1.png"></div>
          <div class="onelogos"><img src="/image/slogo/2.png"></div>
          <div class="onelogos"><img src="/image/slogo/3.png"></div>
          <div class="onelogos"><img src="/image/slogo/4.png"></div>
          <div class="onelogos"><img src="/image/slogo/5.png"></div>
          <div class="onelogos"><img src="/image/slogo/6.png"></div>
          <div class="onelogos"><img src="/image/slogo/7.png"></div>
          <div class="onelogos"><img src="/image/slogo/8.png"></div>
          <div class="onelogos"><img src="/image/slogo/9.png"></div>
          <div class="onelogos"><img src="/image/slogo/10.png"></div>
          <div class="onelogos"><img src="/image/slogo/11.png"></div>
          <div class="onelogos"><img src="/image/slogo/12.png"></div>
          <div class="onelogos"><img src="/image/slogo/13.png"></div>
          <div class="onelogos"><img src="/image/slogo/14.png"></div>
          <div class="onelogos"><img src="/image/slogo/15.png"></div>
          <div class="onelogos"><img src="/image/slogo/16.png"></div>
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
    </div>
  </div>


  </body>
  <script>
    window.onload=function(){
      var mySwiper = new Swiper ('.swiper-container1', {
        loop: true, // 循环模式选项
        // 如果需要分页器
        pagination: {
          el: '.swiper-pagination',
          clickable: true,

        },
        autoplay:true,
        autoplay: {
          disableOnInteraction: false,
        },
        autoplayStopOnLast:false,

      })


      var mySwiper = new Swiper ('.swiper-container2', {
        // 如果需要分页器
        pagination: {
          el: '.swiper-pagination',
        },
        autoplay:false,
        slidesPerView: 2,
        centeredSlides: true,
        slideToClickedSlide: true,
        grabCursor: true,
        history: true,
        slidesOffsetBefore : -700,
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      })
    }

  </script>
</html>
