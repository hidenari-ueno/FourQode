// $(function(){
//     $(".mypageSideBarList").on("click", function(){
//       var index =$(".mypageSideBarList").index(this);
//         if(index) == $(".mypageSideBarList").eq(2){
//             $(".mypageSideBarList").css("background-color","white");
//             $(".mypageSideBarList").eq(index).css("background-color","gray"):
//             $("")
//         }
//       $(".mypageSideBarList").eq(index).css("background-color","#eee");
//       $(".clicked").removeClass('clicked').css("background-color","#eee");
//       $(this).addClass('clicked').css("background-color","white");
//     });
//   });
$(function(){
  $('.mypageSideBarList').on('mouseover', function(){
    var num = $(this).index();
    console.log(num)
  });
});