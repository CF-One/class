//创建课程
function createCourse(phone) {
    let courseName1=document.getElementById("courseName").value.trim();
    let grade1=document.getElementById("grade").value.trim();
    let schoolYear=document.getElementById("schoolYear");
    let semester=document.getElementById("semester");
    let schoolYearIndex=schoolYear.selectedIndex;
    let schoolYearText=schoolYear.options[schoolYearIndex].text;
    let semesterIndex=semester.selectedIndex;
    let semesterText=semester.options[semesterIndex].text;
    if (courseName1==""||grade1==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/teacherServlet/teacherCreateCourseServlet?courseName="+courseName1+"&teacherPhone="+phone+"&grade="+grade1+"&schoolYear="+schoolYearText+"&semester="+semesterText+"&courseId="+randomWord(false,6);
    }
}

function randomWord(randomFlag, min, max){
    var str = "",
        range = min,
        arr = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

    // 随机产生
    if(randomFlag){
        range = Math.round(Math.random() * (max-min)) + min;
    }
    for(var i=0; i<range; i++){
        pos = Math.round(Math.random() * (arr.length-1));
        str += arr[pos];
    }
    return str;
}
//添加课程
function addCourse(phone) {
    let addCourseId=document.getElementById("addCourseId").value.trim();
    if (addCourseId==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/teacherServlet/teacherAddCourseServlet?addCourseId="+addCourseId+"&userPhone="+phone;
    }
}

//删除创建课程-删除按钮
let courseID=null;
function popBox2(courseName,courseId) {
    courseID=courseId;
    var popBox2 = document.getElementById("popBox2");
    var popLayer2 = document.getElementById("popLayer2");
    popBox2.style.display = "block";
    popLayer2.style.display = "block";
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "none";
    popLayer5.style.display = "none";
    let deleteCreateCourseName=document.getElementById("deleteCreateCourseName");
    deleteCreateCourseName.innerHTML=courseName;
}


//删除创建课程-确认删除按钮
function sureDeleteCourse(phone) {
    let deleteCreateCoursePassWord=document.getElementById("deleteCreateCoursePassWord").value.trim();
    if (deleteCreateCoursePassWord==""){
        alert("请填写登录密码");
    }else{
        window.location.href="/servlet/teacherServlet/teacherDeleteCreateCourseServlet?phone="+phone+"&passWord="+deleteCreateCoursePassWord+"&courseId="+courseID;
    }
}

//删除加入课程-删除按钮
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


//删除加入课程-确认删除按钮
function sureDeleteAddCourse(phone) {
    let deleteAddCoursePassWord=document.getElementById("deleteAddCoursePassWord").value.trim();
    if (deleteAddCoursePassWord==""){
        alert("请填写登录密码");
    }else{
        window.location.href="/servlet/teacherServlet/teacherDeleteAddCourseServlet?phone="+phone+"&passWord="+deleteAddCoursePassWord+"&courseId="+courseIDAdd;
    }
}
/* 修改课程 */
let updateCourseId=null;
function popBox4(id,name,grade) {
    var popBox4 = document.getElementById("popBox4");
    var popLayer4 = document.getElementById("popLayer4");
    popBox4.style.display = "block";
    popLayer4.style.display = "block";
    updateCourseId=id;
    var updateCourseName = document.getElementById("updateCourseName");
    var updateGradeName = document.getElementById("updateGradeName");
    updateCourseName.value=name;
    updateGradeName.value=grade;
}
//修改创建课程
function updateCreateCourse() {
    var popBox4 = document.getElementById("popBox4");
    var popLayer4 = document.getElementById("popLayer4");
    popBox4.style.display = "none";
    popLayer4.style.display = "none";
    let courseName=document.getElementById("updateCourseName").value.trim();
    let grade=document.getElementById("updateGradeName").value.trim();
    let schoolYear=document.getElementById("updateSchoolYear");
    let semester=document.getElementById("updateSemester");
    let schoolYearIndex=schoolYear.selectedIndex;
    let schoolYearText=schoolYear.options[schoolYearIndex].text;
    let semesterIndex=semester.selectedIndex;
    let semesterText=semester.options[semesterIndex].text;
    if (courseName==""||grade==""){
        alert("请完善信息");
    }else{
        window.location.href="/servlet/teacherServlet/updateCreateCourseServlet?courseName="+courseName+"&grade="+grade+"&schoolYear="+schoolYearText+"&semester="+semesterText+"&courseId="+updateCourseId;
    }
}
/* 归档课程 */
let FileCourseId=null;
function popBox3(courseId) {
    FileCourseId=courseId;
    var popBox3 = document.getElementById("popBox3");
    var popLayer3 = document.getElementById("popLayer3");
    popBox3.style.display = "block";
    popLayer3.style.display = "block";
}
//确定归档自己课程
function sureFileOwnCourse(fileDifference) {
    window.location.href="/servlet/teacherServlet/file/fileOwnCourseServlet?courseId="+FileCourseId+"&fileDifference="+fileDifference;

}
/* 归档加入的课程 */
/*let FileAddCourseId1=null;*/
function popBox3AddCourse(courseId) {
    FileCourseId=courseId;
    alert(FileCourseId);
    var popBox3AddCourse = document.getElementById("popBox3AddCourse");
    var popLayer3 = document.getElementById("popLayer3");
    popBox3AddCourse.style.display = "block";
    popLayer3.style.display = "block";
}
//恢复归档
let recoveryFileCourseId=null;
let recovery1=null;
function popBox6(courseId,recovery) {
    recoveryFileCourseId=courseId;
    recovery1=recovery;
    var popBox6 = document.getElementById("popBox6");
    var popLayer6 = document.getElementById("popLayer6");
    popBox6.style.display = "block";
    popLayer6.style.display = "block";
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "none";
    popLayer5.style.display = "none";

}
function recoveryFile() {
    window.location.href="/servlet/teacherServlet/file/recoverFileCourseServlet?courseId="+recoveryFileCourseId+"&recovery="+recovery1;

}
