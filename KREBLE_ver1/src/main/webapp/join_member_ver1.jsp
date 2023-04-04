<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="../css/page23.css">
    <link rel="stylesheet" type="text/css" href="../css/Header_Footer_Aside_baseform.css">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="../js/Header_Footer_Aside_baseform.js"></script>
    <script src="../js/page2.js"></script>
<body>
  
  <jsp:include page="Header_baseform.jsp"/>


<!--section-->
  <section>
    <div class="section_inner">
    
      
  <!-- 페이지 전체 div -->
      <div id="div_body">

        <!-- 페이지 중앙정렬-->
        <div id="div_body_center">

          <!-- 회원가입 안내 문구 -->
          <div id = "mem_title">
            <div class = "mem_title_header">
              <div class="title_top_margin">
                <div> 회원가입 </div>
              </div>
              <div class="title_bottom">
                <div class="title_bottom_margin">
                <ul>
                  <li>가입여부 확인</li>
                  <li>>></li>
                  <li>필수사항 입력</li>
                  <li>>></li>
                  <li>가입 완료</li>
                </ul>
                </div>
                <div class="space_only"></div>
              </div>
            </div>
          </div>


          <!-- 이름 -->
          <div id="name_body">
            <div class="label_field">
              <div class="label_title1">Name</div>
            </div>
            <div class="label_field">
              <div class="button_field">성별</div>
            </div>
            <div class="text_field">
                <form name = "input_name">
                  <input type="text"class="user_input_field1" placeholder="Please enter your name." maxlength="16">
                  <select name = "select_box">
                    <option value="man">남자</option>
                    <option value="woman">여자</option>
                  </select>
                </form>
            </div>
          </div>

          <!-- 아이디 -->
          <div id="id_body">
            <div class="label_field">
              <div class="label_title1">ID</div>
            </div>
            <div class="button_field">
                <form name="checkbutton">
                  <input type="button" value="ID Check" class="button_size" onclick="idcheck(input_id.userid_field.value)">
                </form>
            </div>
            <div class="text_field">
              <div>
                <form name = "input_id">
                  <input type="text"class="user_input_field1" name = "userid_field" placeholder="Please enter your ID." maxlength="16">
                </form>
              </div>
            </div>
          </div>


          <!-- 비번 -->
          <div id="pass1_body">
            <div class="label_field">
              <div>PassWord</div>
            </div>
            <div class="text_field">
                <form name = "input_pass">
                 <input type="PassWord"class="user_input_field0" placeholder="Please enter your password." maxlength="16">
                </form>
              </div>
          </div>


          <!-- 비번확인 -->
          <div id="pass2_body">
            <div class="label_field">
              <div>PassWord Check</div>
            </div>
            <div class="text_field">
                <form name = "input_pass">
                  <input type="PassWord"class="user_input_field0" placeholder="Please enter your password." maxlength="16">
                </form>
            </div>
          </div>



          <!-- 연락처 -->
          <div id="call_body">
            <div class="label_field">
              <div class="label_title2">Mobile Number</div>
            </div>
            <div class="text_field">
                <form name = "input_number">
                  <select name = "select_box">
                    <option value="skt">SKT</option>
                    <option value="kt">KT</option>
                    <option value="lg">LG</option>
                  </select>
                  <div class="size_only">&nbsp;</div>
                  <select name = "select_box1">
                    <option value="010">010</option>
                    <option value="011">011</option>
                  </select>
                  <div class="size_only">&nbsp;</div>
                  <input type="text" class="user_input_field2" maxlength="4" placeholder="0000"> -
                  <input type="text" class="user_input_field2" maxlength="4" placeholder="0000">
                </form>
            </div>
          </div>


          <!-- 주소 -->
          <div id="address_body">
            <div class="label_field">
              <div class="label_title1">Address</div>
            </div>
            <div class="button_field">
                <form name="checkbutton">
                  <input type="button" value="Input your addr" class="button_size" onclick="adrs_input()">
                </form>
            </div>
            <div class="text_field">
              <div>
                <form name = "input_addr">
                  <input type="text"class="user_input_field1" name = "useraddr_field" placeholder="Please enter your Address." maxlength="20">
                </form>
              </div>
            </div>
          </div>


          <!-- 생일 -->
          <div id="birth_body">
            <div class="label_field">
              <div class="label_title3">Birth</div>
            </div>
            <div class="text_field">
                <form name = "input_birth">
                  <input type="text" class="user_input_field3" maxlength="4" placeholder="YYYY">
                  <div class="size_only1">년</div>
                  <select name = "select_box2">
                     <option value="1월">1</option>
                     <option value="2월">2</option>
                     <option value="3월">3</option>
                     <option value="4월">4</option>
                     <option value="5월">5</option>
                     <option value="6월">6</option>
                     <option value="7월">7</option>
                     <option value="8월">8</option>
                     <option value="9월">9</option>
                     <option value="10월">10</option>
                     <option value="11월">11</option>
                     <option value="12월">12</option>
                  </select>
                  <div class="size_only1">월</div>
                  <select name = "select_box2">
                     <option value="1일">1</option>
                     <option value="2일">2</option>
                     <option value="3일">3</option>
                     <option value="4일">4</option>
                     <option value="5일">5</option>
                     <option value="6일">6</option>
                     <option value="7일">7</option>
                     <option value="8일">8</option>
                     <option value="9일">9</option>
                     <option value="10일">10</option>
                     <option value="11일">11</option>
                     <option value="12일">12</option>
                     <option value="13일">13</option>
                     <option value="14일">14</option>
                     <option value="15일">15</option>
                     <option value="16일">16</option>
                     <option value="17일">17</option>
                     <option value="18일">18</option>
                     <option value="19일">19</option>
                     <option value="20일">20</option>
                     <option value="21일">21</option>
                     <option value="22일">22</option>
                     <option value="23일">23</option>
                     <option value="24일">24</option>
                     <option value="25일">25</option>
                     <option value="26일">26</option>
                     <option value="27일">27</option>
                     <option value="28일">28</option>
                     <option value="29일">29</option>
                     <option value="30일">30</option>
                     <option value="31일">31</option>
                  </select>
                  <div class="size_only">일</div>
                </form>
            </div>
          </div>


          <!-- 이메일 -->
          <div id="email_body">
            <div class="label_field">
              <div class="label_title4">E-Mail</div>
            </div>
            <div class="button_field">
                <form >
                  <input type="checkbox" checked>&nbsp;Agree to receive ads
                </form>
              </div>
            </div>
            <div class="text_field">
              <div>
                <form name = "input_email">
                  <input type="text" class="user_input_field4" maxlength="16" placeholder="E-Mail ID">
                  <select name = "select_box1">
                    <option>@naver.com</option>
                    <option>@gmail.com</option>
                    <option>@kakao.com</option>
                    <option>@hanmail.net</option>
                    <option>@yahoo.com</option>
                  </select>
                </form>
            </div>
          </div>


          <!-- 다음/초기 버튼 -->
          <div id="end_body">
            <div id="end_only_center">
              <ul>
                <li><input type="button" value="Join" class="button_size1" onclick="fldcheck()">
                </li>
                <li><a href="index.jsp"><input type="button" value="Home" class="button_size1"></a>
                </li>
              </ul>
            </div>
          </div>

        <!-- 페이지 중앙정렬 div 종료 -->      
        </div>

  <!-- 페이지 전체 div 종료 -->
  </div>





  	</div><!--section_inner div 종료-->
  </section>

	<jsp:include page="Footer_baseform.jsp"/>
</body>
</html>