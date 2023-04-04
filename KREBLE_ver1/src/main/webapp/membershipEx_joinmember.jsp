<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%> 
<!doctype html>

<html>
<head> 
  <meta charset="utf-8">
  <title>회원가입(세션 이용)</title>
  <style>
    
  </style>
</head>
<body> 
  <h3>회원가입 결과 정보입니다.</h3>
  아이디: ${id}<br><br>
  비밀번호: ${pw}<br><br>
  이름: ${name}<br><br>
  생년월일: ${month}월
  ${day}<br><br>
  이메일:${mail1}
  ${mail2}<br><br>
  ${phone}
  ${firstnum} -
  ${phonenum} -
  ${phonenum2}
  <form action="membershipEx_VerMysql.jsp" method="post">
    <input type="submit" name="" value="뒤로가기" style="width: 100px; height: 50px;">
  </form>
</body>
</html>