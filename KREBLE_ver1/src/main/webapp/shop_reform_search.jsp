<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="use_data.Shop_reform_db" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
  String cata = request.getParameter("re_cata"); 
  String trade = request.getParameter("re_tr"); 
  String title = request.getParameter("re_title"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/Header_Footer_Aside_baseform.css">
	<link rel="stylesheet" type="text/css" href="css/shop_reform_board.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script type="text/javascript" src="slick/slick.min.js"></script>
	<script src="js/Header_Footer_Aside_baseform.js"></script>
	<script src="js/shop_reform_board.js"></script>
	
<title>제작의뢰게시판</title>
</head>
<body>
    <!-- header -->
  
	<jsp:include page="Header_baseform.jsp"/>
	
	<jsp:useBean id="jsp_ub2" class="use_data.Database" />
	<% 
	ArrayList<Shop_reform_db> al = jsp_ub2.shop_board_sc(cata,trade,title);
	%>

	
	<section>
		<div><!-- width 1280px -->
			<article id="art_no1"><!-- 주문(리폼)제작의뢰소 타이틀 -->
				<div>주문 제작 의뢰소 </div>
			</article>
			<article id="art_no2"><!-- 주문(리필)제작리스트 테이블(표) -->
				<div><!-- 중앙정렬 용 -->
					<table border="1">
						<tr>
							<td>글번호</td>
							<td>카테고리</td>
							<td>글제목</td>
							<td>작성자</td>
							<td>거래여부</td>
							<td>작성일</td>
						</tr>
						<%
						int i = al.size();
						for (i = i-1; i >= 0; i = i-1) {
						    out.println("<tr>");
						    out.println("<td>"+al.get(i).getRenum()+"</td>");
						    out.println("<td>"+al.get(i).getRecata()+"</td>");
						    out.println("<td><a href=\"shop_board_detail_view.jsp?renum="+al.get(i).getRenum()+"\">"+al.get(i).getRetitle()+"</a></td>");
						    out.println("<td>"+al.get(i).getReid()+"</td>");
						    out.println("<td>"+al.get(i).getRetrade()+"</td>");
						    out.println("<td>"+al.get(i).getRedate()+"</td>");
						    out.println("</tr>");
						}
						%>
						
					</table>
				</div>
			</article>
			
			<article id="art_no3"><!-- 검색창 등 -->
				<div><!-- 중앙정렬 용 -->
					<form>
						<select id = "search1">
							<option value = "">전체보기</option>
							<option>축구공</option>
							<option>축구화</option>
							<option>유니폼</option>
							<option>기타용품</option>
						</select>
						<select id = "search2">
							<option value = "">전체보기</option>
							<option>미체결</option>
							<option>거래중</option>
							<option>완료</option>
						</select>
						<input type="text" id = "search3" placeholder="검색하실 게시글의 제목을 입력하세요" value="">
						<input type="button" value = "검색" id="search" onclick="aaa()">
						<a href="shop_board_detail.jsp"><input type="button" value = "글쓰기" id="write"></a>
					</form>
				</div>
			</article>
		</div>
	</section>
	
    <!-- footer -->
    <jsp:include page="Footer_baseform.jsp"/>
</body>
</html>