<!-- js문서객체 모델 적용-->
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%> 
<%@ page import="java.sql.*"%>

<!doctype html>
<html>
<head> <!-- 문서정보 -->
    <meta charset="utf-8">
    <title>회원가입 만들기</title>
    <link rel="stylesheet" type="text/css" href="membershipEx.css">
    <style type="text/css">
        .ver1{font-size: 15pt;}
        .ver2{color: #B2CCFF;font-size: 15pt;}
    </style>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
    var finish= false
    function duplicatecheck(){
            var idcheck=$("#idcheck").val();
            if (idcheck.length<5 || idcheck.length>15 ) { 
                alert("6글자 이상으로 15글자 미만으로 입력해주세요");
                return;
            }
            $.ajax({
                url:"membershipEx_VerMysql_select.jsp?id="+idcheck , //url 받아오는 id값을 입력해서 가져오는 방법
                type:"post" ,
                dataType:"html",
                //data:{"id":idcheck}, // db에 있는 아이디 값을 키값으로 저장해두는 방법
                success:function(re){  //문서 이동을 성공했을 때 펑션 실행
                  //console.log(re);
                  if (re.trim()=="true") {
                    alert("사용가능한 아이디입니다.");
                    finish=true;
                  }else{
                    alert("중복된 아이디입니다.");
                    finish=false;
                  }
                }
            });
        }
    function allcheck(){
            if(idcheck.value==""){
                alert("아이디를 항목을 입력해주세요");
                 $("#idcheck").focus();
                return false;
            }
            else if(pwcheck.value==""){
                alert("비밀번호를 항목을 입력해주세요");
                 $("#pwcheck").focus();
                return false;
            }
            else if (repwcheck.value=="") {
                alert("비밀번호 재입력 항목을 입력해주세요.");
                $("#repwcheck").focus();
                return false;
            }
            else if(namecheck.value==""){
                alert("이름 항목을 입력해주세요.");
                $("namecheck").focus();
                return false;
            } 
            //required 기능으로 변경함 단 required세팅할 경우 alert보다 required가 먼저 작동함
            else if(monthcheck.value=="" || daycheck.value==""){
                alert("생년월일 항목을 전부 입력해주세요");
                return false;
            }
            else if(mail1check.value=="" || mail2check.value==""){
                alert("메일 항목을 전부 입력해주세요");
                return false;
            }
            else if(phonenumcheck1.value=="" || phonenumcheck2.value==""){
                alert("연락처 항목을 전부 입력해주세요");
                return false;
            }else if (pwcheck.value != repwcheck.value) {
                alert("비밀번호 입력값이 서로 다릅니다!");
                return false;
            }else if (finish==false) {
                alert("아이디 중복체크를 완료해주세요");
                return false; // 중복체크를 완료해야 가입이 되게끔 하는 코드
                //위에 finish변수를 설정하고 중복확인 코드에 아이디 사용가능일때 변수가 ture 불가능일때 변수가 false
                //입력 후에 해당 if 조건=중복확인을 누르지 않았을때 alert이 뜨는 해당 코드를 입력해주면 완료.
            }else{
                return ture;
            }
    }
    $(function() {
      $("#repwcheck").on("change keyup paste", function(){ // 비밀번호 일치 기능
        if(pwcheck.value==repwcheck.value){
            $("#eqpw").text("비밀번호가 일치합니다!");
            $("#eqpw").css("color","green");
            $("#eqpw").css("font-size","13px");
            pwture=true;
        }else if(repwcheck.value==""){
            $("#eqpw").text("비밀번호 항목을 입력해주세요.");
            $("#eqpw").css("color","red");
            $("#eqpw").css("font-size","13px");
        }
        else{
            $("#eqpw").text("비밀번호가 일치하지 않습니다!");
            $("#eqpw").css("color","red");
            $("#eqpw").css("font-size","13px");
            pwfalse=false;
        }
        });
    });
</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }

                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;

                var guideTextBox = document.getElementById("guide");
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<body bgcolor="#f5f6f7"> <!-- 문서내용 -->
    <center>
    <table>
    <form name="myform" method="post" action="membershipEx_VerMysql_insert.jsp" onsubmit="return allcheck()">
        <tr><td align="center" class="ver1"><b>회원가입</b></td></tr>
        <tr>
            <td class="ver2">ID : </td>
        </tr>
        <tr>
            <div>
                <td><input type="text" name="idin" placeholder="*아이디를 입력하세요" class="idtex" value="" id="idcheck">
                    <input type="button" id="aa" class="bu" value="중복확인" onclick="duplicatecheck()">
                </td>
            </div>
        </tr>
            
            <tr><td class="ver2">PW :</tr></td>
                <tr><td><input type="text" name="pw" placeholder="*비밀번호를 입력하세요" class="tex" value="" id="pwcheck"></td></tr>
            
            <tr><td class="ver2">PW : 재입력</tr></td>
                <tr><td><input type="password" name="repw" placeholder="*비밀번호를 재입력하세요" class="tex" value="" id="repwcheck"><br></td></tr>
            <tr><td><p id="eqpw"></p></td></tr>
        <tr>
            <td class="ver2">이름(필수)</td></tr>
            <tr><td><input type="text" name="name" placeholder="*이름을 입력하세요" class="tex" value="" id="namecheck"></td>
        </tr>
        <tr><td class="ver2">생년월일(필수)</td></tr>
        <tr><td><input type="month" class="birsize" name="month" value="" id="monthcheck">
        <select class="daysize" name="day" id="daycheck" >
            <option value="">일</option>
            <option>1일</option>
            <option>2일</option>
            <option>3일</option>
            <option>4일</option>
            <option>5일</option>
            <option>6일</option>
            <option>7일</option>
            <option>8일</option>
            <option>9일</option>
            <option>10일</option>
            <option>11일</option>
            <option>12일</option>
            <option>13일</option>
            <option>14일</option>
            <option>15일</option>
            <option>16일</option>
            <option>17일</option>
            <option>18일</option>
            <option>19일</option>
            <option>20일</option>
            <option>21일</option>
            <option>22일</option>
            <option>23일</option>
            <option>24일</option>
            <option>25일</option>
            <option>26일</option>
            <option>27일</option>
            <option>28일</option>
            <option>29일</option>
            <option>30일</option>
            <option>31일</option>
        </select></td></tr>
            <tr><td class="ver2">성별</td></tr>
        <tr><td>
            <input type="radio" class="duplicate" name="gender" value="man" checked onclick="checkgender()">남자
            <input type="radio" class="duplicate" name="gender" value="woman" onclick="checkgender()">여자
        </td></tr>
        <tr><td class="ver2">이메일:</td></tr>
        <tr><td><input type="text" class="mailsize" name="mail1" value="" id="mail1check" >@
            <select class="mailsize2" name="mail2" id="mail2check">
            <option value="">선택</option>
            <option>@naver.com</option>
            <option>@hanmail.net</option>
            <option>@gmail.com</option>
            <option>직접입력</option>
            </select></td></tr>
            
            <tr><td class="ver2">연락처
                <input type="radio" name="phone" value="SKT" class="telecom">SKT
                <input type="radio" name="phone" value="KT" class="telecom">KT
                <input type="radio" name="phone" value="LGU+" class="telecom">LG</td>
            </tr>
            <tr>
            <td><select class="telsize" name="firstNum" id="firstnumcheck">
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
            </select> -
            <input type="text" class="telsize2" name="phoneNum" value="" id="phonenumcheck1"> -
            <input type="text" class="telsize2" name="phoneNum2" value="" id="phonenumcheck2" >
            <!-- <td><button type="button" class="bu">인증번호<br>받기</button></td></tr> -->
        <tr>
            <td class="ver2">주소</td>
        </tr>
        <tr>
            <td>
                <input type="text" id="sample4_postcode" placeholder="우편번호" class="jusosize">
                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class="bu3"><br>
            </td>
        </tr>
        <tr>
            <td>
                <input type="text" id="sample4_roadAddress" placeholder="도로명주소" class="jusosize">
                <input type="text" id="sample4_detailAddress" placeholder="상세주소" class="jusosize">
                <span id="guide" style="color:#999;display:none"></span>
            </td>
        </tr>
        <td>
            <a href="login.jsp">
                <input type="button" value="뒤로가기" class="backbtn" name="backbu" id="back">
            </a>
            <input type="submit" value="가입하기" class="bu2" name="joinmember" id="joinbtn">
        </td>
    </form>

</table>
</center>
</body>
</html>
