<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!doctype html>
<html>
 <head>
   <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/Header_Footer_Aside_baseform.css">
    <link rel="stylesheet" type="text/css" href="../css/login2.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
   <title>
    축구팀프
   </title>
 </head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="../js/Header_Footer_Aside_baseform.js"></script>
<script src="../js/login.js"></script>
 <body>
  <div id="shopmain1">

    <!-- header -->
  
  <jsp:include page="Header_baseform.jsp"/>

    <!--section-->
  <section>
    <div class="section_inner">
      <!--article 시작-->
      <article>
        <div id="login_id">
          <div class = "mem_title">
            <img src="../image/logo12.png">
          </div>
        </div>
        <form name="user_login">
          <label for="username">아이디:</label>
          <input type="text" id="username" name="username"><br><br>
          <label for="password">비밀번호:</label>
          <input type="password" id="password" name="password"><br><br>
          <div class="button_center">
            <input type="submit" value="로그인">
            <a href="join_member.jsp"><input type="button" value="회원가입"></a>
          </div>
          <div class="links">
            <a href="#">아이디 찾기</a>
            <a href="#">비밀번호 찾기</a>
          </div>
        </form>
      </article>
    </div>
 </section>


 <!-- footer -->
    <jsp:include page="Footer_baseform.jsp"/>
 </body>
</html>