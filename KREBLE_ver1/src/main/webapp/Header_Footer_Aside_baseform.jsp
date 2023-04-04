<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
  <link rel="stylesheet" type="text/css" href="../css/Header_Footer_Aside_baseform.css">
	<link href="../css/join_member.css" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="../css/page2.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="../js/Header_Footer_Aside_baseform.js"></script>
 <script src="../js/page2.js"></script>
<body>
	<header>
    <div class="header_inner">
        <h1><a href="index.jsp"><img src="../image/logo.png" alt="kerble"></a></h1>
        <ul class="cate_login">
            <li><a href="login.jsp">로그인</a></li>
            <li><a href="join_member.jsp">회원가입</a></li>
            <li><a href="#">마이페이지</a></li>
        </ul>
       
       <div class="top_nav">
            <ul>
                <li>
                  <a href="#">정보소개</a>
                  <ul class="sub">
                    <li><a href="#">선수소개</a></li>
                    <li><a href="#">감독소개</a></li>
                    <li><a href="#">팀소개</a></li>
                    <li><a href="#">기록조회</a></li>
                    <li><a href="#">축구강의</a></li>
                  </ul>
                </li>

                <li>
                  <a href="#">국내축구</a>
                  <ul class="sub">
                    <li><a href="#">국내리그</a></li>
                    <li><a href="#">국내시설</a></li>
                    <li><a href="#">경기일정</a></li>
                  </ul>
                </li>

                <li>
                  <a href="#">해외축구</a>
                  <ul class="sub">
                    <li><a href="#">해외리그소개</a></li>
                    <li><a href="#">해외시설개요</a></li>
                  </ul>
                </li>

                <li>
                  <a href="mysquad.jsp">#유저공간</a>
                  <ul class="sub">
                    <li><a href="mysquad.jsp">나만의스쿼드</a></li>
                    <li><a href="#">유저커뮤니티</a></li>
                    <li><a href="#">승부예측</a></li>
                  </ul>
                </li>

                <li>
                  <a href="krebleshop.jsp">#쇼핑</a>
                  <ul class="sub">
                    <li><a href="krebleshop.jsp">쇼핑목록</a></li>
                    <li><a href="#">장바구니</a></li>
                    <li><a href="#">관심상품</a></li>
                  </ul>
                </li>

                <li>
                  <a href="#">고객센터</a>
                  <ul class="sub">
                    <li><a href="#">자주하는질문</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">이벤트안내</a></li>
                    <li><a href="#">1:1문의</a></li>
                  </ul>
                </li>

                <li>
                  <a href="kreblechoi.jsp">#예약/대여</a>
                  <ul class="sub">
                    <li><a href="kreblechoi.jsp">시민구장 정보</a></li>
                    <li><a href="#">시민구장 예약</a></li>
                    <li><a href="#">경기티켓팅</a></li>
                    <li><a href="rent_review.jsp">후기 게시판</a></li>
                  </ul>
                </li>

            </ul>
            <form>
                <input type="search" id="search">
                <button type="submit" class="btn_sch">검색하기</button>
            </form>
        </div>
    </div>
    <span class="nav_back"></span>
    </header>


<!--section-->
  <section>
    <div class="section_inner">



      <!--aside-->
      <aside>
        <div class="aside_wrap">
          <a href="#">정보소개</a>
          <ul>
              <li><a href="#">선수소개</a></li>
              <li><a href="#">감독소개</a></li>
              <li><a href="#">팀소개</a></li>
              <li><a href="#">기록조회</a></li>
              <li><a href="#">축구강의</a></li>
              <li><a href="#">경기일정</a></li>
              <li><a href="#">국내리그</a></li>
          </ul>
        </div>
        <div class="aside_wrap">
          <a href="#">국내시설</a>
          <ul>
            <li><a href="#">시설개요</a></li>
            <li><a href="kreblechoi.jsp">#시설대여</a></li>
            <li><a href="#">티켓팅</a></li>
          </ul>
        </div>
        <div class="aside_wrap">
          <a href="#">해외정보</a>
          <ul>
            <li><a href="#">해외리그소개</a></li>
            <li><a href="#">해외시설개요</a></li>
          </ul>
        </div>
        <div class="aside_wrap">
          <a href="#">유저공간</a>
          <ul>
            <li><a href="#">유저커뮤니티</a></li>
            <li><a href="#">승부예측</a></li>
            <li><a href="mysquad.jsp">#나만의스쿼드</a></li>
          </ul>
        </div>
        <div class="aside_wrap">
          <a href="krebleshop.jsp">#쇼핑</a>
          <ul>
            <li><a href="#">쇼핑목록</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">관심상품</a></li>
          </ul>
        </div>
      </aside>

  	</div><!--section_inner div 종료-->
  </section>

	<footer>
		<div class="footer_inner">
			<h2><a href="index.jsp"><img src="../image/logo.png"></a></h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
		</div>
	</footer>
</body>
</html>