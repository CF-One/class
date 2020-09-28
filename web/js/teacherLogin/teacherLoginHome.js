/* 创建课程 */
/*创建课程弹出框*/
function popBox() {
    var popBox = document.getElementById("popBox");
    var popLayer = document.getElementById("popLayer");
    popBox.style.display = "block";
    popLayer.style.display = "block";
};
/*点击关闭按钮*/
function closeBox() {
    var popBox = document.getElementById("popBox");
    var popLayer = document.getElementById("popLayer");
    popBox.style.display = "none";
    popLayer.style.display = "none";
}
   

/*加入课程弹出框*/
/*弹出框*/
function popBox1() {
    var popBox1 = document.getElementById("popBox1");
    var popLayer1 = document.getElementById("popLayer1");
    popBox1.style.display = "block";
    popLayer1.style.display = "block";
};
/*点击关闭按钮*/
function closeBox1() {
    var popBox1 = document.getElementById("popBox1");
    var popLayer1 = document.getElementById("popLayer1");
    popBox1.style.display = "none";
    popLayer1.style.display = "none";
}  

    
/* 删除课程 */
/*点击弹出按钮*/

/*点击关闭按钮*/
function closeBox2() {
    /*var popBox2 = document.getElementById("popBox2");
    var popLayer2 = document.getElementById("popLayer2");
    popBox2.style.display = "none";
    popLayer2.style.display = "none";*/
    var popBox21 = document.getElementById("popBox21");
    var popLayer21 = document.getElementById("popLayer21");
    popBox21.style.display = "none";
    popLayer21.style.display = "none";
}



/*点击关闭按钮*/
function closeBox3() {
    var popBox3 = document.getElementById("popBox3");
    var popLayer3 = document.getElementById("popLayer3");
    popBox3.style.display = "none";
    popLayer3.style.display = "none";
    var popBox3 = document.getElementById("popBox3AddCourse");
    popBox3.style.display = "none";
}    



/*点击关闭按钮*/
function closeBox4() {
    var popBox4 = document.getElementById("popBox4");
    var popLayer4 = document.getElementById("popLayer4");
    popBox4.style.display = "none";
    popLayer4.style.display = "none";
}    

/* 课程排序和归档 */    
function popBox5() {
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "block";
    popLayer5.style.display = "block";
};
/*点击关闭按钮*/
function closeBox5() {
    var popBox5 = document.getElementById("popBox5");
    var popLayer5 = document.getElementById("popLayer5");
    popBox5.style.display = "none";
    popLayer5.style.display = "none";
}    


/* 归档课程弹出框 */

/*点击关闭按钮*/
    function closeBox6() {
    var popBox6 = document.getElementById("popBox6");
    var popLayer6 = document.getElementById("popLayer6");
    popBox6.style.display = "none";
    popLayer6.style.display = "none"; 
}  


/* 拖拽改变位置 */
    function allowDrop(ev) {
            ev.preventDefault();
        }
        var srcdiv = null;
        var temp = null;
        //当拖动时触发
        function drag(ev, divdom) {
            srcdiv = divdom;
            temp = divdom.innerHTML;
        }
        //当拖动完后触发
        function drop(ev, divdom) {
            ev.preventDefault();
            if (srcdiv !== divdom) {
                srcdiv.innerHTML = divdom.innerHTML;
                divdom.innerHTML = temp;
            }
        }



/* 点击导航栏显示对应页面 */
$(function(){
    //获取点击事件的对象
    $(".navigation li").click(function(){
        //获取要显示或隐藏的对象
        var divShow = $(".content1").children('.list2');
        //判断当前对象是否被选中，如果没选中的话进入if循环
        if (!$(this).hasClass('selected')) {
            //获取当前对象的索引
            var index = $(this).index();
            //当前对象添加选中样式并且其同胞移除选中样式；
            $(this).addClass('selected').siblings('li').removeClass('selected');
            //索引对应的div块显示
            $(divShow[index]).show();
            //索引对应的div块的同胞隐藏
            $(divShow[index]).siblings('.list2').hide();
        }
    });
});

/* 快速发布活动弹出框 */    
function popBox7() {
    var popBox7 = document.getElementById("popBox7");
    var popLayer7 = document.getElementById("popLayer7");
    popBox7.style.display = "block";
    popLayer7.style.display = "block";
};
/*点击关闭按钮*/
function closeBox7() {
    var popBox7 = document.getElementById("popBox7");
    var popLayer7= document.getElementById("popLayer7");
    popBox7.style.display = "none";
    popLayer7.style.display = "none";
}    

/* 发布个人作业 */
function popBox8() {
    var popBox8 = document.getElementById("popBox8");
    var popLayer8 = document.getElementById("popLayer8");
    popBox8.style.display = "block";
    popLayer8.style.display = "block";
    var popBox7 = document.getElementById("popBox7");
    var popLayer7= document.getElementById("popLayer7");
    popBox7.style.display = "none";
    popLayer7.style.display = "none";
};
/*点击关闭按钮*/
function closeBox8() {
    var popBox8 = document.getElementById("popBox8");
    var popLayer8= document.getElementById("popLayer8");
    popBox8.style.display = "none";
    popLayer8.style.display = "none";
} 



/* 就是这两个有问题，只用一个就能用，两个都在，就用不起了 */
/* 信息弹出框点击事件
   */
  function toggle(){
    if(news.style.display=="block"){
      news.style.display="none";
    } 
    else{
      news.style.display="block";
      people.style.display="none";
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
        news.style.display="none";
    }
  }
