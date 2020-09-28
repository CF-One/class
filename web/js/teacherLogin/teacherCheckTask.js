/* 信息弹出框点击事件
   */
  function toggle(){
    if(news.style.display=="block"){
      news.style.display="none";
      
    } 
    else{
      news.style.display="block";
      
    }
  }
  window.onload=function(){
    var naozhong=document.getElementById("naozhong");
    var news=document.getElementById("news");
    naozhong.onclick=toggle;
    var touxiang=document.getElementById("touxiang");
    var people=document.getElementById("people");
    touxiang.onclick=toggle1;
    
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
/* 全选和取消全选 */
window.onload = function () {
  var naozhong=document.getElementById("naozhong");
  var news=document.getElementById("news");
  naozhong.onclick=toggle;
  var touxiang=document.getElementById("touxiang");
  var people=document.getElementById("people");
  touxiang.onclick=toggle1;//弹出框

  var selectAll = document.getElementById("selectAll");// 获取全选元素
  var ggs = document.getElementsByName("gg");//获取input标签里的checkbox相同名字的集合
  // 全选或者不选的时候 调用此函数
  function ff(flag) {//勾选时flag=true,取消勾选时flag=false
  //创建 i < input 的条件进行for循环获取input的索引，在条件内i++,不满足条件就结束代码
  for (var i = 0; i < ggs.length; i++) {
  ggs[i].checked = flag;//获取 i 当前条，然后等于传过来的参数
  }
  }
  //全选的点击事件，根据点击的状态调用上面函数
  selectAll.onclick = function () {
  if (selectAll.checked) {//if(selectAll.checked)判断是否勾选
  document.getElementById("pp").innerHTML = '取消全选';
  ff(true);//调用ff(flag)函数，把判断勾选的参数true传过去
  } else {
  document.getElementById("pp").innerHTML = '本页全选';
  ff(false)//调用ff(flag)函数，把判断勾选的参数false传过去
  } } }

/*  */
/*催交弹出框*/
let callTaskId=null;
let callResultId=null;
let callStudentId=null;
function popBox(taskId,resultId,studentId) {
  callTaskId=taskId;
  callResultId=resultId;
  callStudentId=studentId;
  var popBox = document.getElementById("popBox");
  var popLayer = document.getElementById("popLayer");
  popBox.style.display = "block";
  popLayer.style.display = "block";
}
/*点击关闭按钮*/
function closeBox() {
  var popBox = document.getElementById("popBox");
  var popLayer = document.getElementById("popLayer");
  popBox.style.display = "none";
  popLayer.style.display = "none";
}
/*确认催交*/
function teacherSureCall() {
  window.location.href="/servlet/teacherServlet/task/teacherCallTaskServlet?callTaskId="+callTaskId+"&callResultId="+callResultId+"&callStudentId="+callStudentId;
}

/*全部催交弹出框*/
function popBox1() {
  var popBox1 = document.getElementById("popBox1");
  var popLayer = document.getElementById("popLayer");
  popBox1.style.display = "block";
  popLayer.style.display = "block";
}
/*点击关闭按钮*/
function closeBox1() {
  var popBox1 = document.getElementById("popBox1");
  var popLayer = document.getElementById("popLayer");
  popBox1.style.display = "none";
  popLayer.style.display = "none";
}
function changeGrades1(resultId,studentGrades,taskId) {
  window.location.href="/servlet/teacherServlet/task/updateStudentResultServlet?resultId="+resultId+"&studentGrades="+studentGrades+"&taskId="+taskId;
  console.log(resultId);
  console.log(studentGrades);
}