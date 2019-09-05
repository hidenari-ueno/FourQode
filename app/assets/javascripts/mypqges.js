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
//お知らせ詳細のオープンクローズ機能
//idは動的に取得するように変更
$(function(){
  $('.noticeItemsIconDown#notice-1').on('click', function(){
    $(this).hide()
    $('.noticeItemsIconUp#notice-1, .noticeBody#notice-1').show()
  });
});
$(function(){
  $('.noticeItemsIconUp#notice-1').on('click', function(){
    $('.noticeItemsIconUp#notice-1, .noticeBody#notice-1',).hide()
    $('.noticeItemsIconDown#notice-1').show()
  });
});