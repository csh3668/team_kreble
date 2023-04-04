<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="use_data.Shop_reform_db"%>
<% request.setCharacterEncoding("utf-8"); %>
<!doctype html>
<html>
 <head>
   <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="css/Header_Footer_Aside_baseform.css">
    <link rel="stylesheet" type="text/css" href="css/krebleshop.css">

   <title>
    Kreble Shop
   </title>
 </head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script src="js/Header_Footer_Aside_baseform.js"></script>
<script src="js/krebleshop.js"></script>
 <body>
  <div id="shopmain1">

    <!-- header -->
  
  <jsp:include page="Header_baseform.jsp"/>

  <!--section-->
  <section style="margin-top : 120px;">

    <!-- section body 센터 맞춤용 -->
    <div id = "section_body"> 

      <form>

      <!-- 참고용사진2 article -->
      <article id = "article_no1">

        <div id= "art_no1_bg_img">
          <img src="image/shopimg/benner/bargain_sale_1.jpg" class = "benner1">
          <img src="image/shopimg/benner/bargain_sale_2.jpg" class = "benner2">
          <img src="image/shopimg/benner/bargain_sale_3.jpg" class = "benner3">
          <img src="image/shopimg/benner/bargain_sale_5.jpg" class = "benner4">
        </div>
        <div class= "art_no1_div1">
          <div class="art_no1_div2 ben_no1">
          70%세일
          </div>
          <div class="art_no1_div2 ben_no2">
          특가대방출
          </div>
          <div class="art_no1_div2 ben_no3">
          폭탄세일
          </div>
          <div class="art_no1_div2 ben_no4">
          한정특가
          </div>
        </div>
      </article>



      <!-- 카테고리(2번) article -->
      <article id = "article_no2">
        
        <!-- 카테고리 중간정렬 -->
        <div id = "article_no2_div1">
          <div class="art_no3_cata bgno1">
            <a href="#article_no4">유니폼</a>
          </div>
          <div class="art_no3_cata bgno2">
            <a href="#article_no8">축구화</a>
          </div>
          <div class="art_no3_cata bgno3">
          	<a href="#article_no9"> 축구공</a>
          </div>
          <div class="art_no3_cata bgno4">
          	<a href="#article_no4"> 축구가방</a>
          </div>
          <div class="art_no3_cata bgno5">
          	<a href="#article_no4">보조식품</a>
          </div>
          <div class="art_no3_cata bgno6">
          	<a href="#article_no10">기타용품</a>
          </div>
        </div>
      </article>



      <!-- 인기브랜드(3번) article -->
      <article id = "article_no3">
        
        <!-- 카테고리 중간정렬 -->
        <div id = "article_no3_div1">
          <div class="brand_label">
            인 &emsp;기 &emsp;브 &emsp;랜 &emsp;드
          </div>
          <div class="art_no3_brand">
            <img src="image/shopimg/logo/logo_adidas.png">
          </div>
          <div class="art_no3_brand">
            <img src="image/shopimg/logo/logo_nike.png">
          </div>
          <div class="art_no3_brand">
            <img src="image/shopimg/logo/logo_puma.png">
          </div>
          <div class="art_no3_brand">
            <img src="image/shopimg/logo/logo_star.png">
          </div>
        </div>
      </article>



      <!-- 상품슬라이드1 article -->
     <jsp:include page="shop_art1.jsp"/>

      
<!--  유니폼 전체보기  -->
      <article id="article_no8">
        <div> <!-- 상품사진 4개  x6 -->
          <div class="uni_ul_no1">
            <ul>
              <li><img src="image/shopimg/uni/uni1_1.png"></li>
              <li><img src="image/shopimg/uni/uni1_2.png"></li>
              <li><img src="image/shopimg/uni/uni2_1.png"></li>
              <li><img src="image/shopimg/uni/uni2_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no2">
            <ul>
              <li><img src="image/shopimg/uni/uni2_3.png"></li>
              <li><img src="image/shopimg/uni/uni3_1.png"></li>
              <li><img src="image/shopimg/uni/uni3_2.png"></li>
              <li><img src="image/shopimg/uni/uni3_3.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no3">
            <ul>
              <li><img src="image/shopimg/uni/uni4_1.png"></li>
              <li><img src="image/shopimg/uni/uni4_2.png"></li>
              <li><img src="image/shopimg/uni/uni4_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no4">
            <ul>
              <li><img src="image/shopimg/uni/uni5_2.png"></li>
              <li><img src="image/shopimg/uni/uni5_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_4.png"></li>
              <li><img src="image/shopimg/uni/uni6_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no5">
            <ul>
              <li><img src="image/shopimg/uni/uni6_2.png"></li>
              <li><img src="image/shopimg/uni/uni6_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_1.png"></li>
              <li><img src="image/shopimg/uni/uni7_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no6">
            <ul>
              <li><img src="image/shopimg/uni/uni7_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_4.png"></li>
              <li><img src="image/shopimg/uni/uni7_5.png"></li>
            </ul>
          </div>
        </div>
        <span class="scroll_bt">
          <input type="button" value="이전" class="scroll_pre_bt">
          <input type="button" value="다음" class="scroll_next_bt">
          <input type="button" value="접기" class="scroll_up_bt">
        </span>
      </article>



      <!-- 상품슬라이드2 article -->
     
     <jsp:include page="shop_art2.jsp"/>

<!--  축구화 전체보기  -->
      <article id="article_no9">
        <div> <!-- 상품사진 4개  x6 -->
          <div class="uni_ul_no1">
            <ul>
              <li><img src="image/shopimg/uni/uni1_1.png"></li>
              <li><img src="image/shopimg/uni/uni1_2.png"></li>
              <li><img src="image/shopimg/uni/uni2_1.png"></li>
              <li><img src="image/shopimg/uni/uni2_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no2">
            <ul>
              <li><img src="image/shopimg/uni/uni2_3.png"></li>
              <li><img src="image/shopimg/uni/uni3_1.png"></li>
              <li><img src="image/shopimg/uni/uni3_2.png"></li>
              <li><img src="image/shopimg/uni/uni3_3.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no3">
            <ul>
              <li><img src="image/shopimg/uni/uni4_1.png"></li>
              <li><img src="image/shopimg/uni/uni4_2.png"></li>
              <li><img src="image/shopimg/uni/uni4_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no4">
            <ul>
              <li><img src="image/shopimg/uni/uni5_2.png"></li>
              <li><img src="image/shopimg/uni/uni5_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_4.png"></li>
              <li><img src="image/shopimg/uni/uni6_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no5">
            <ul>
              <li><img src="image/shopimg/uni/uni6_2.png"></li>
              <li><img src="image/shopimg/uni/uni6_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_1.png"></li>
              <li><img src="image/shopimg/uni/uni7_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no6">
            <ul>
              <li><img src="image/shopimg/uni/uni7_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_4.png"></li>
              <li><img src="image/shopimg/uni/uni7_5.png"></li>
            </ul>
          </div>
        </div>
        <span class="scroll_bt">
          <input type="button" value="이전" class="scroll_pre_bt">
          <input type="button" value="다음" class="scroll_next_bt">
          <input type="button" value="접기" class="scroll_up_bt">
        </span>
      </article>




      <!-- 상품슬라이드3 article -->

     <jsp:include page="shop_art3.jsp"/>
     
     
<!--  축구공 전체보기  -->
      <article id="article_no10">
        <div> <!-- 상품사진 4개  x6 -->
          <div class="uni_ul_no1">
            <ul>
              <li><img src="image/shopimg/uni/uni1_1.png"></li>
              <li><img src="image/shopimg/uni/uni1_2.png"></li>
              <li><img src="image/shopimg/uni/uni2_1.png"></li>
              <li><img src="image/shopimg/uni/uni2_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no2">
            <ul>
              <li><img src="image/shopimg/uni/uni2_3.png"></li>
              <li><img src="image/shopimg/uni/uni3_1.png"></li>
              <li><img src="image/shopimg/uni/uni3_2.png"></li>
              <li><img src="image/shopimg/uni/uni3_3.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no3">
            <ul>
              <li><img src="image/shopimg/uni/uni4_1.png"></li>
              <li><img src="image/shopimg/uni/uni4_2.png"></li>
              <li><img src="image/shopimg/uni/uni4_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no4">
            <ul>
              <li><img src="image/shopimg/uni/uni5_2.png"></li>
              <li><img src="image/shopimg/uni/uni5_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_4.png"></li>
              <li><img src="image/shopimg/uni/uni6_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no5">
            <ul>
              <li><img src="image/shopimg/uni/uni6_2.png"></li>
              <li><img src="image/shopimg/uni/uni6_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_1.png"></li>
              <li><img src="image/shopimg/uni/uni7_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no6">
            <ul>
              <li><img src="image/shopimg/uni/uni7_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_4.png"></li>
              <li><img src="image/shopimg/uni/uni7_5.png"></li>
            </ul>
          </div>
        </div>
        <span class="scroll_bt">
          <input type="button" value="이전" class="scroll_pre_bt">
          <input type="button" value="다음" class="scroll_next_bt">
          <input type="button" value="접기" class="scroll_up_bt">
        </span>
      </article>

     

      <!-- 상품슬라이드4 article -->
      
     <jsp:include page="shop_art4.jsp"/>
     
     
     
<!--  기타용품 전체보기  -->
      <article id="article_no11">
        <div> <!-- 상품사진 4개  x6 -->
          <div class="uni_ul_no1">
            <ul>
              <li><img src="image/shopimg/uni/uni1_1.png"></li>
              <li><img src="image/shopimg/uni/uni1_2.png"></li>
              <li><img src="image/shopimg/uni/uni2_1.png"></li>
              <li><img src="image/shopimg/uni/uni2_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no2">
            <ul>
              <li><img src="image/shopimg/uni/uni2_3.png"></li>
              <li><img src="image/shopimg/uni/uni3_1.png"></li>
              <li><img src="image/shopimg/uni/uni3_2.png"></li>
              <li><img src="image/shopimg/uni/uni3_3.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no3">
            <ul>
              <li><img src="image/shopimg/uni/uni4_1.png"></li>
              <li><img src="image/shopimg/uni/uni4_2.png"></li>
              <li><img src="image/shopimg/uni/uni4_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no4">
            <ul>
              <li><img src="image/shopimg/uni/uni5_2.png"></li>
              <li><img src="image/shopimg/uni/uni5_3.png"></li>
              <li><img src="image/shopimg/uni/uni5_4.png"></li>
              <li><img src="image/shopimg/uni/uni6_1.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no5">
            <ul>
              <li><img src="image/shopimg/uni/uni6_2.png"></li>
              <li><img src="image/shopimg/uni/uni6_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_1.png"></li>
              <li><img src="image/shopimg/uni/uni7_2.png"></li>
            </ul>
          </div>
          <div class="uni_ul_no6">
            <ul>
              <li><img src="image/shopimg/uni/uni7_3.png"></li>
              <li><img src="image/shopimg/uni/uni7_4.png"></li>
              <li><img src="image/shopimg/uni/uni7_5.png"></li>
            </ul>
          </div>
        </div>
        <span class="scroll_bt">
          <input type="button" value="이전" class="scroll_pre_bt">
          <input type="button" value="다음" class="scroll_next_bt">
          <input type="button" value="접기" class="scroll_up_bt">
        </span>
      </article>

     

    </form>
    </div>
  </section>

    <!-- footer -->
    <jsp:include page="Footer_baseform.jsp"/>
    </div>
 </body>
</html>