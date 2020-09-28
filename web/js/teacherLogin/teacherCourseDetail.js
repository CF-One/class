
window.onload=function(){
    leftMenu();
    rightCorner();
}
function rightCorner() {
    var naozhong=document.getElementById("naozhong");
    var news=document.getElementById("news");
    naozhong.onclick=toggle;//信息弹出框
    var touxiang=document.getElementById("touxiang");
    var people=document.getElementById("people");
    touxiang.onclick=toggle1;//个人中心弹出框
    var fabu=document.getElementById("fabu");
    var homeWork=document.getElementById("homeWork");
    fabu.onclick=toggle2;//发布作业弹出框
    var kaiguan=document.getElementById("kaiguan");
    var chachong=document.getElementById("chachong");
    kaiguan.onclick=toggle3;//查重开关按钮弹出框
}
/* 信息弹出框点击事件 */
  function toggle(){
    if(news.style.display=="block"){
      news.style.display="none";
    } 
    else{
      news.style.display="block";
    }
  }
/* 个人中心弹出框点击事件 */
function toggle1(){
    if(people.style.display=="block"){
        people.style.display="none";
    } 
    else{
        people.style.display="block";
    }
  }
/*  点击显示发布作业页面*/
function toggle2(){
  if(homeWork.style.display=="block"){
      fabu.style.backgroundColor="#ffffff";
      fabu.style.color="#32BAF0";
      homeWork.style.display="none";
  } 
  else{
      fabu.style.backgroundColor="#32BAF0";
      fabu.style.color="#ffffff";
      homeWork.style.display="block";
  }
}
/*取消按钮*/
function cancelTask() {
    homeWork.style.display="none";
}
/*发布作业*/
/*$('#peopleTask').click(function () {
    let courseId=document.getElementById("taskCourseId").value;
    let createTaskName=document.getElementById("createTaskName").value.trim();
    let createTaskSummary=document.getElementById("createTaskSummary").value.trim();
    let createTaskOverDate=document.getElementById("createTaskOverDate").value.trim();
    let createTaskFullScore=document.getElementById("createTaskFullScore").value.trim();
    let createTaskCheck=document.getElementById("createTaskCheck").value.trim();
    if (createTaskName==""||createTaskSummary==""||createTaskOverDate==""||createTaskFullScore==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/teacherServlet/task/teacherCreateCourseTaskServlet?createTaskName="+createTaskName+"&createTaskSummary="+createTaskSummary+"&createTaskOverDate="+createTaskOverDate+"&createTaskFullScore="+createTaskFullScore+"&createTaskCheck="+createTaskCheck+"&courseId="+courseId+"&systemDate="+getNowFormatDate()+"&num="+"1";
    }
})*/
function peopleTask(courseId) {
    let createTaskName=document.getElementById("createTaskName").value.trim();
    let createTaskSummary=document.getElementById("createTaskSummary").value.trim();
    let createTaskOverDate=document.getElementById("createTaskOverDate").value.trim();
    let createTaskFullScore=document.getElementById("createTaskFullScore").value.trim();
    let createTaskCheck=document.getElementById("createTaskCheck").value.trim();
    if (createTaskName==""||createTaskSummary==""||createTaskOverDate==""||createTaskFullScore==""){
        alert("请完善信息"+courseId+"id");
    }else{
        window.location.href="/servlet/teacherServlet/task/teacherCreateCourseTaskServlet?createTaskName="+createTaskName+"&createTaskSummary="+createTaskSummary+"&createTaskOverDate="+createTaskOverDate+"&createTaskFullScore="+createTaskFullScore+"&createTaskCheck="+createTaskCheck+"&courseId="+courseId+"&systemDate="+getNowFormatDate()+"&num="+"1";
    }
}
// 获取当前系统时间戳
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + date.getHours() + seperator2 + date.getMinutes()
        + seperator2 + date.getSeconds();
    return currentdate;
}
/*  点击显示发布查重页面*/
function toggle3(){
  if(chachong.style.display=="none"){
    chachong.style.display="block";
  } 
  else{
    chachong.style.display="none";
  }

}
//左滑出菜单
function leftMenu() {
    var divLeftMenu = document.getElementById("div-left-menu")//获取菜单div
    $('#li-nav-item').click(function () {
        $('#div-left-menu').css('display','block');
        if (divLeftMenu.style.display == 'block'){
            $('#li-nav-item').click(function(event) {
                event.stopPropagation();
            })
            $(document).click(function(){
                $('#div-left-menu').css('display','none');
            })
            $('#div-left-menu').click(function(event) {
                event.stopPropagation();
            })
        }
    });
}