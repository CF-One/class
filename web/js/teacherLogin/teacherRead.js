/* 信息弹出框点击事件
   */
  function toggle(){
    if(people.style.display=="block"){
        people.style.display="none";
      
    } 
    else{
        people.style.display="block";
      
    }
  }
  window.onload=function(){
    var span1=document.getElementById("span1");
    var people=document.getElementById("people");
    span1.onclick=toggle;
    
    
}
/*  */
/* 点击导航栏显示对应页面 */
$(function(){
    //获取点击事件的对象
    $(".navigation li").click(function(){
    //获取要显示或隐藏的对象
        var divShow = $(".contentMain").children('.list2');
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
