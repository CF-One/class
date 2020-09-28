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
      <link rel="stylesheet" href="/css/index/huawen.css" type="text/css">
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
  <!--    轮播-->
  <div class="page-carousel">
    <div class="swiper-container">
      <div class="swiper-wrapper swiper-container1">
        <div class="swiper-slide">
          <a href="#"><div class="slide-item slide-item-1" ></div></a>
        </div>
        <div class="swiper-slide">
          <a href="#"><div class="slide-item slide-item-2" ></div></a>
        </div>
        <div class="swiper-slide">
          <a href="#" ><div class="slide-item slide-item-3" ></div></a>
        </div>
      </div>
      <!-- 分页器 -->
      <div class="swiper-pagination">
        <span class="swiper-pagination-bullet"></span>
        <span class="swiper-pagination-bullet"></span>
        <span class="swiper-pagination-bullet"></span>
      </div>

      <!-- 导航按钮 -->
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>

    </div>
  </div>
  <!--中间-->
  <div class="content">
    <div class="section2">
      <ul>
        <li>北大华文慕课</li>
      </ul>
      <div class="section2-right">
        <input type="text" placeholder="搜索课程名称、老师姓名、关键词">
        <img src="/image/homesearch.png">
      </div>
    </div>
    <div class="courselist">
      <div class="coursenav">
        <ul>
          <li class="" ><a>全部课程</a></li>
          <li class="" ><a>计算机</a></li>
          <li class="" ><a>理学</a></li>
          <li class="" ><a>工程</a></li>
          <li class="" ><a>法与社会</a></li>
          <li class="" ><a>文学</a></li>
          <li class="" ><a>历史</a></li>
          <li class="" ><a>哲学</a></li>
          <li class="" ><a>经济管理</a></li>
          <li class="" ><a>教育</a></li>
          <li class="" ><a>艺术</a></li>
          <li class="" ><a>医学</a></li>
          <li class="" ><a>对外汉语</a></li>
          <li class=""><a>就业创业</a></li>
        </ul>
      </div>
      <div class="coursetop">
        <!-- type为1 为课程资源 有分类 -->
        <div class="coursecliets" >
          <ul>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/2.jpg">
                <div class="bottomArea">
                  <div class="title" title="太极拳">太极拳</div>
                  <div class="coursetag">教育</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>冯凯杰</div>
                    <div class="nums">1359 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/1.jpg">
                <div class="bottomArea">
                  <div class="title" title="中华毽">中华毽</div>
                  <div class="coursetag">教育</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>唐彦</div>
                    <div class="nums">5 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/3.jpg">
                <div class="bottomArea">
                  <div class="title" title="法律导论">法律导论</div>
                  <div class="coursetag">法与社会</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>凌斌</div>
                    <div class="nums">1207 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/4.jpg">
                <div class="bottomArea">
                  <div class="title" title="国际市场营销学">国际市场营销学</div>
                  <div class="coursetag">经济管理</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>吴侨玲</div>
                    <div class="nums">2596 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/5.jpg">
                <div class="bottomArea">
                  <div class="title" title="统计热力学">统计热力学</div>
                  <div class="coursetag">理学</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>刘志荣</div>
                    <div class="nums">186 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/6.jpg">
                <div class="bottomArea">
                  <div class="title" title="环境污染事件与应急响应">环境污染事件与应急响应</div>
                  <div class="coursetag">理学</div>
                  <div class="coursetag">经济管理</div>
                  <div class="info">
                    <div class="author"><span>北京师范大学</span>田光进</div>
                    <div class="nums">614 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/7.jpg">
                <div class="bottomArea">
                  <div class="title" title="法学论文与方法">法学论文与方法</div>
                  <div class="coursetag">法与社会</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>凌斌</div>
                    <div class="nums">840 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/8.jpg">
                <div class="bottomArea">
                  <div class="title" title="汉字太极与养生">汉字太极与养生</div>
                  <div class="coursetag">教育</div>
                  <div class="coursetag">哲学</div>
                  <div class="coursetag">对外汉语</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>李朝斌</div>
                    <div class="nums">470 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/9.jpg">
                <div class="bottomArea">
                  <div class="title" title="国际贸易">国际贸易</div>
                  <div class="coursetag">经济管理</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>李权</div>
                    <div class="nums">4022 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/10.jpg">
                <div class="bottomArea">
                  <div class="title" title="思政热点面对面一习近平新时代中国特色社会主义思想关键词解读.....">思政热点面对面一习近平新时代中国特色社会主义思想关键词解读.....</div>
                  <div class="coursetag">哲学</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>陈培永</div>
                    <div class="nums">535 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/11.jpg">
                <div class="bottomArea">
                  <div class="title" title="太极拳">射箭</div>
                  <div class="coursetag">教育</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>冯凯杰</div>
                    <div class="nums">1359 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/12.jpg">
                <div class="bottomArea">
                  <div class="title" title="射箭">射箭</div>
                  <div class="coursetag">教育</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>张冰</div>
                    <div class="nums">71 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank" >
                <img src="/image/studentLogin/home/contentli/13.jpg">
                <div class="bottomArea">
                  <div class="title" title="普通生物学">普通生物学</div>
                  <div class="coursetag">理学</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>佟向军</div>
                    <div class="num">370 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/19.jpg">
                <div class="bottomArea">
                  <div class="title" title="英语语音和听说词汇">英语语音和听说词汇</div>
                  <div class="coursetag">艺术</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>梁波</div>
                    <div class="nums">5958 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/18.jpg">
                <div class="bottomArea">
                  <div class="title" title="生物统计">生物统计</div>
                  <div class="coursetag">计算机</div>
                  <div class="coursetag">理学</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>席瑞斌</div>
                    <div class="nums">1159 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/20.jpg">
                <div class="bottomArea">
                  <div class="title" title="大数据分析中的算法">大数据分析中的算法</div>
                  <div class="coursetag">计算机</div>
                  <div class="coursetag">理学</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>文再文</div>
                    <div class="nums">708 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/14.jpg">
                <div class="bottomArea">
                  <div class="title" title="大学生乒乓球课">大学生乒乓球课</div>
                  <div class="coursetag">教育</div>
                  <div class="info">
                    <div class="author fl"><span>北京大学</span>吴飞</div>
                    <div class="nums fr">213 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank" >
                <img src="/image/studentLogin/home/contentli/15.jpg">
                <div class="bottomArea">
                  <div class="title" title="中国美声">中国美声</div>
                  <div class="coursetag">艺术</div>
                  <div class="info">
                    <div class="author fl"><span>北京大学</span>金曼</div>
                    <div class="nums fr">229 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/16.jpg">
                <div class="bottomArea">
                  <div class="title" title="地球环境与人类社会">地球环境与人类社会</div>
                  <div class="info">
                    <div class="author"><span>北京大学</span>李小凡</div>
                    <div class="nums">267 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/17.jpg">
                <div class="bottomArea">
                  <div class="title" title="历代青花画法">历代青花画法</div>
                  <div class="coursetag">艺术</div>
                  <div class="coursetag">历史</div>
                  <div class="info">
                    <div class="author fl"><span>北京师范大学</span>陈殿</div>
                    <div class="nums fr">145 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
            <li class="courseli">
              <a class="topArea" target="_blank">
                <img src="/image/studentLogin/home/contentli/17.jpg">
                <div class="bottomArea">
                  <div class="title" title="历代青花画法">历代青花画法</div>
                  <div class="coursetag">艺术</div>
                  <div class="coursetag">历史</div>
                  <div class="info">
                    <div class="author fl"><span>北京师范大学</span>陈殿</div>
                    <div class="nums fr">145 <span> 人学习</span></div>
                  </div>
                </div>
              </a>
            </li>
          </ul>
        </div></div>
      <div class="coursebottom">

      </div>
      <div id="wenku">

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
  <script>
    window.onload=function(){
      var mySwiper = new Swiper ('.swiper-container', {
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
        // 如果需要前进后退按钮
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },

      })
    }

  </script>
</html>
