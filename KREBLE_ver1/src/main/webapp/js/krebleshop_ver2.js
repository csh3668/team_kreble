$(function(){

// 참고용사진2article

  $('#art_no1_bg_img > img').hide();
  $('#art_no1_bg_img > img:first-child').show();

  $('.ben_no1').hover(function(){
    $('#art_no1_bg_img > img').hide();
    $('.benner1').show();
    $('.ben_no2, .ben_no3, .ben_no4').removeClass('black');
    $('.ben_no1').addClass('black');
  })
  $('.ben_no2').hover(function(){
    $('#art_no1_bg_img > img').hide();
    $('.benner2').show();
    $('.ben_no1, .ben_no3, .ben_no4').removeClass('black');
    $('.ben_no2').addClass('black');
  });
  $('.ben_no3').hover(function(){
    $('#art_no1_bg_img > img').hide();
    $('.benner3').show();
    $('.ben_no2, .ben_no1, .ben_no4').removeClass('black');
    $('.ben_no3').addClass('black');
  })
  $('.ben_no4').hover(function(){
    $('#art_no1_bg_img > img').hide();
    $('.benner4').show();
    $('.ben_no2, .ben_no3, .ben_no1').removeClass('black');
    $('.ben_no4').addClass('black');
  })


$('#article_no8 > div').addClass('hide_div');

$('#article_no8 > div').slick({
  vertical: true,
  slidesToShow: $('#article_no8 > div > div > ul > li').length, // 슬라이드 전체 개수로 설정
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2500
});

$('.bu_uniform').click(function(){
  $('#article_no8 > div').slideDown();
});

$('#article_no8 > span > .scroll_up_bt').click(function(){
  $('#article_no8 > div').slideUp(400);
});

$('.scroll_next_bt').click(function(){
  $('#article_no8 > div').slick('slickNext');
});

$('.scroll_pre_bt').click(function(){
  $('#article_no8 > div').slick('slickPrev');
});


// 상품 색상변경
  $('.img300, .img225').hide();
  $('.img300.prd_img_no1, .img225.prd_img_no1').show();


  // 1-1(3)
  $('.c_uni1_1').hover(function(){
    $('#article_no4 .prd_uni_no1 > img').hide();
    $('.uni1_1').show();
  })
  $('.c_uni1_2').hover(function(){
    $('#article_no4 .prd_uni_no1 > img').hide();
    $('.uni1_2').show();
  })
  $('.c_uni1_3').hover(function(){
    $('#article_no4 .prd_uni_no1 > img').hide();
    $('.uni1_3').show();
  })
  // 1-2(3)
  $('.c_uni2_1').hover(function(){
    $('#article_no4 .prd_uni_no2 > img').hide();
    $('.uni2_1').show();
  })
  $('.c_uni2_2').hover(function(){
    $('#article_no4 .prd_uni_no2 > img').hide();
    $('.uni2_2').show();
  })
  $('.c_uni2_3').hover(function(){
    $('#article_no4 .prd_uni_no2 > img').hide();
    $('.uni2_3').show();
  })
  // 1-3(4)
  $('.c_uni3_1').hover(function(){
    $('#article_no4 .prd_uni_no3 > img').hide();
    $('.uni3_1').show();
  })
  $('.c_uni3_2').hover(function(){
    $('#article_no4 .prd_uni_no3 > img').hide();
    $('.uni3_2').show();
  })
  $('.c_uni3_3').hover(function(){
    $('#article_no4 .prd_uni_no3 > img').hide();
    $('.uni3_3').show();
  })
  $('.c_uni3_4').hover(function(){
    $('#article_no4 .prd_uni_no3 > img').hide();
    $('.uni3_4').show();
  })
  // 1-4(5)
  $('.c_uni4_1').hover(function(){
    $('#article_no4 .prd_uni_no4 > img').hide();
    $('.uni4_1').show();
  })
  $('.c_uni4_2').hover(function(){
    $('#article_no4 .prd_uni_no4 > img').hide();
    $('.uni4_2').show();
  })
  $('.c_uni4_3').hover(function(){
    $('#article_no4 .prd_uni_no4 > img').hide();
    $('.uni4_3').show();
  })
  $('.c_uni4_4').hover(function(){
    $('#article_no4 .prd_uni_no4 > img').hide();
    $('.uni4_4').show();
  })
  $('.c_uni4_5').hover(function(){
    $('#article_no4 .prd_uni_no4 > img').hide();
    $('.uni4_5').show();
  })
  // 2-2(2)
  $('.c_sue1_1').hover(function(){
    $('#article_no5 .prd_sue_no1 > img').hide();
    $('.sue1_1').show();
  })
  $('.c_sue1_2').hover(function(){
    $('#article_no5 .prd_sue_no1 > img').hide();
    $('.sue1_2').show();
  })
  // 2-3(2)
  $('.c_sue2_1').hover(function(){
    $('#article_no5 .prd_sue_no2 > img').hide();
    $('.sue2_1').show();
  })
  $('.c_sue2_2').hover(function(){
    $('#article_no5 .prd_sue_no2 > img').hide();
    $('.sue2_2').show();
  })
  // 2-4(3)
  $('.c_sue3_1').hover(function(){
    $('#article_no5 .prd_sue_no3 > img').hide();
    $('.sue3_1').show();
  })
  $('.c_sue3_2').hover(function(){
    $('#article_no5 .prd_sue_no3 > img').hide();
    $('.sue3_2').show();
  })
  $('.c_sue3_3').hover(function(){
    $('#article_no5 .prd_sue_no3 > img').hide();
    $('.sue3_3').show();
  })
  // 3-1(3)
  $('.c_ball1_1').hover(function(){
    $('#article_no6 .prd_ball_no1 > img').hide();
    $('.ball1_1').show();
  })
  $('.c_ball1_2').hover(function(){
    $('#article_no6 .prd_ball_no1 > img').hide();
    $('.ball1_2').show();
  })
  $('.c_ball1_3').hover(function(){
    $('#article_no6 .prd_ball_no1 > img').hide();
    $('.ball1_3').show();
  })
  // 3-2(2)
  $('.c_ball2_1').hover(function(){
    $('#article_no6 .prd_ball_no2 > img').hide();
    $('.ball2_1').show();
  })
  $('.c_ball2_2').hover(function(){
    $('#article_no6 .prd_ball_no2 > img').hide();
    $('.ball2_2').show();
  })
  // 3-4(2)
  $('.c_ball3_1').hover(function(){
    $('#article_no6 .prd_ball_no3 > img').hide();
    $('.ball3_1').show();
  })
  $('.c_ball3_2').hover(function(){
    $('#article_no6 .prd_ball_no3 > img').hide();
    $('.ball3_2').show();
  })
  // 4-1(5)
  $('.c_etc1_1').hover(function(){
    $('#article_no7 .prd_ball_no1 > img').hide();
    $('.etc1_1').show();
  })
  $('.c_etc1_2').hover(function(){
    $('#article_no7 .prd_ball_no1 > img').hide();
    $('.etc1_2').show();
  })
  $('.c_etc1_3').hover(function(){
    $('#article_no7 .prd_ball_no1 > img').hide();
    $('.etc1_3').show();
  })
  $('.c_etc1_4').hover(function(){
    $('#article_no7 .prd_ball_no1 > img').hide();
    $('.etc1_4').show();
  })
  $('.c_etc1_5').hover(function(){
    $('#article_no7 .prd_ball_no1 > img').hide();
    $('.etc1_5').show();
  })

});