//创建课程作业
function createCourseTask() {
    let createTaskName=document.getElementById("createTaskName").value.trim();
    let createTaskSummary=document.getElementById("createTaskSummary").value.trim();
    let createTaskOverDate=document.getElementById("createTaskOverDate").value.trim();
    let createTaskFullScore=document.getElementById("createTaskFullScore").value.trim();
    let createTaskCheck=document.getElementById("createTaskCheck").value.trim();
    let createTaskCourseName=document.getElementById("createTaskCourseName");
    let schoolYearIndex=createTaskCourseName.selectedIndex;
    let createTaskCourseId=createTaskCourseName.options[schoolYearIndex].value;
    if (createTaskName==""||createTaskSummary==""||createTaskOverDate==""||createTaskFullScore==""||createTaskCheck==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/teacherServlet/task/teacherCreateCourseTaskServlet?createTaskName="+createTaskName+"&createTaskSummary="+createTaskSummary+"&createTaskOverDate="+createTaskOverDate+"&createTaskFullScore="+createTaskFullScore+"&createTaskCheck="+createTaskCheck+"&courseId="+createTaskCourseId+"&systemDate="+getNowFormatDate();
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
//教师点击成员人数跳转
function teacherSeeMember(courseName,courseId) {
   window.location.href="/jsp/teacherLogin/teacherSeeMember.jsp?courseId="+courseId+"&courseName="+courseName;

}