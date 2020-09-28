/*加入课程弹出框*/
/*弹出框*/
function centerTopAddCourse() {
    var popBox1 = document.getElementById("popBox1");
    var popLayer1 = document.getElementById("popLayer1");
    popBox1.style.display = "block";
    popLayer1.style.display = "block";
}
/*确定加入课程*/
function addCourse(phone) {
    let addCourseId=document.getElementById("addCourseId").value.trim();
    if (addCourseId==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/studentServlet/studentAddCourseServlet?addCourseId="+addCourseId+"&userPhone="+phone;
    }
}
/*
*恢复归档
*/
let recoveryFileCourseId=null;
function popBox6(courseId) {
    recoveryFileCourseId=courseId;
    var popBox6 = document.getElementById("popBox6");
    var popLayer6 = document.getElementById("popLayer6");
    popBox6.style.display = "block";
    popLayer6.style.display = "block";
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "none";
    popLayer5.style.display = "none";

}
/*确认恢复*/
function recoveryFile() {
    window.location.href="/servlet/studentServlet/recoverFileCourseServlet?courseId="+recoveryFileCourseId;

}
//删除课程-删除按钮
let courseIDAdd=null;
function popBox2Add(courseName,courseId) {
    courseIDAdd=courseId;
    var popBox2 = document.getElementById("popBox21");
    var popLayer2 = document.getElementById("popLayer21");
    popBox2.style.display = "block";
    popLayer2.style.display = "block";
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "none";
    popLayer5.style.display = "none";
    let deleteAddCourseName=document.getElementById("deleteAddCourseName");
    deleteAddCourseName.innerHTML=courseName;
}
//删除课程-确认删除按钮
function sureDeleteCourse(phone) {
    let deleteAddCoursePassWord=document.getElementById("deleteAddCoursePassWord").value.trim();
    if (deleteAddCoursePassWord==""){
        alert("请填写登录密码");
    }else{
        window.location.href="/servlet/studentServlet/studentDeleteCourseServlet?phone="+phone+"&passWord="+deleteAddCoursePassWord+"&courseId="+courseIDAdd;
    }
}
/* 归档课程 */
let FileAddCourseId11=null;
function studentFileCourse(courseId) {
    FileAddCourseId11=courseId;
    var popBox3AddCourse = document.getElementById("popBox3AddCourse");
    var popLayer3 = document.getElementById("popLayer3");
    popBox3AddCourse.style.display = "block";
    popLayer3.style.display = "block";
}
//确定归档自己课程
function sureFileOwnCourse() {
    window.location.href="/servlet/studentServlet/fileCourseServlet?courseId="+FileAddCourseId11;

}
//归档取消按钮
function returnFileBtn() {
    var popLayer3 = document.getElementById("popLayer3");
    popLayer3.style.display = "none";
    var popBox3 = document.getElementById("popBox3AddCourse");
    popBox3.style.display = "none";
}