<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
   <link rel="stylesheet" type="text/css" href="../css/Header_Footer_Aside_baseform.css">
   <link rel="stylesheet" type="text/css" href="../css/page24.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/Header_Footer_Aside_baseform.js"></script>
 <script src="../js/page2.js"></script>
 <script src="../js/map.js"></script>
<body>

  <jsp:include page="Header_baseform.jsp"/>


<!--section-->
  <section>
    <div class="content">
    <h2>회원가입</h2>
    <form name="joinmember" action="loginpage_value.jsp" method="post" onsubmit="return memberjoin()">
      <div class="page page1">
        <div class="agree_box">
          <label for="agree1">이용약관 동의</label>
          <input type="checkbox"  name="agree" value="agree1">
          <span><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></span>
        </div>

        <div class="agree_box">
          <label for="agree2">개인정보 수집 및 이용 동의</label>
          <input type="checkbox"  name="agree" value="agree2">
          <span><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></span>
        </div>

        <span class="page_button prev_button">이전으로</span>
        <span class="page_button next_button">다음으로</span>
      </div>

      <div class="page page2">
        <div class="type1">
          <label for="uid">아이디</label>
          <input type="text" id="uid" name="uid">
          <input type="button" name="checkid" value="아이디 중복확인" id="checkid">
        </div>

        <label for="uname">이름</label>
        <input type="text" id="uname" name="uname">

        <label for="pw">비밀번호</label>
        <input type="password" class="pass" id="pw" name="pw">

        <label for="repw">비밀번호 재확인</label>
        <input type="password" class="pass" id="repw" name="repw">

        <span class="page_button prev_button">이전으로</span>
        <span class="page_button next_button">다음으로</span>
      </div>

      <div class="page page3">
        <label for="birth">생년월일</label>
        <input type="date" name="birth" id="birth">
        

        <label for="gneder">성별</label>
        <select name="gender">
          <option checked>남</option>
          <option>여</option>
        </select>

        <div class="phone">
          <label for="ph1">전화번호</label>
          <select name="ph_select">
            <option value="010" selected>010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="018">018</option>
            <option value="019">019</option>
          </select>
          <input type="text" name="ph_text" class="ph" id="ph1" maxlength="4" onlynum>
          <input type="text" name="ph_text" class="ph" maxlength="4" onlynum>
          <input type="button" id="authen" value="인증번호 발송">
        </div>

        <label for="email">e-mail</label>
        <input type="text" id="email" name="email">
        <span class="at">@</span>
        <select name="email" class="email">
          <option value="naver.com" selected>naver.com</option>
          <option value="google.com">google.com</option>
          <option value="daum.net">daum.net</option>
          <option value="nate.com">nate.com</option>
        </select>

        <label for="sample4_postcode">주소</label>
        <div class="address">
          <input type="text" name="address_text" id="sample4_postcode" placeholder="우편번호">
          <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
          <input type="text" name="address_text" id="sample4_roadAddress" placeholder="도로명주소">
          <input type="text" name="address_text" id="sample4_jibunAddress" placeholder="지번주소">
          <span id="guide" style="color:#999;display:none"></span>
          <input type="text" name="address_text" id="sample4_detailAddress" placeholder="상세주소">
          <input type="text" name="address_text" id="sample4_extraAddress" placeholder="참고항목">
        </div>

        <label for="inauthen">인증번호 입력</label>
        <input type="text" id="inauthen" name="inauthen">

        <span class="page_button prev_button">이전으로</span>
        <input type="submit" id="joinmem" value="회원가입">
      </div>

      
    </form>
  </div>
  </section>

	<jsp:include page="Footer_baseform.jsp"/>
</body>
</html>