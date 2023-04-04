<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>유저 커뮤니티</title>
	<link rel="stylesheet" type="text/css" href="css/Header_Footer_Aside_baseform.css">
	<link rel="stylesheet" type="text/css" href="css/community.css">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="js/Header_Footer_Aside_baseform.js"></script>
<script src="js/community.js"></script>

<body>
<jsp:include page="Header_baseform.jsp"/>
	<section>
		<div class="section_inner">
			<aside>
				<div class="aside_wrap">
					<a href="mysquad.jsp">나만의 스쿼드</a>
					<ul>
		      </ul>
		    </div>
		    <div class="aside_wrap">
					<a href="community.jsp?cate=all">유저커뮤니티</a>
            <ul>
            	<li><a href="community.jsp?cate=free">자유게시판</a></li>
            	<li><a href="community.jsp?cate=debate">토론게시판</a></li>
            	<li><a href="community.jsp?cate=qna">질문게시판</a></li>
            	<li><a href="community.jsp?cate=info">정보게시판</a></li>
            </ul>
		    </div>
		    <div class="aside_wrap">
					<a href="#">승부예측</a>
            <ul>
            	<li><a href="#">승부예측</a></li>
            	<li><a href="#">예측결과</a></li>
            	<li><a href="#">참여내역</a></li>
            </ul>
		    </div>
		        
			</aside>
			<div class="community">
				<div class="community_inner">
					<jsp:useBean id="ud" class="use_data.Database"/>
			
				    <%@ page import="use_data.CommunityData"%>
				    <%@ page import="java.util.ArrayList"%>
				    <%String cate = request.getParameter("cate"); %>
					<span class="btn btn_write"><a href="community_check.jsp?do=ck">글쓰기</a></span>
				    <select name="cate" id="cate" class="category">
				    	<optgroup label="카테고리">
				    	<option value="all" <% if(cate.equals("all")){%>selected="selected"<%}%>>전체</option>
						<option value="free" <% if(cate.equals("free")){%>selected="selected"<%}%>>자유</option>
						<option value="debate" <% if(cate.equals("debate")){%>selected="selected"<%}%>>토론</option>
						<option value="qna" <% if(cate.equals("qna")){%>selected="selected"<%}%>>질문</option>
						<option value="info" <% if(cate.equals("info")){%>selected="selected"<%}%>>정보</option>
						</optgroup>
					</select>
				    <table>
					    <tr class="bg1">
					    	<th class="head1">글번호</th>
					    	<th class="head2">작성자</th>
					    	<th class="head2">카테고리</th>
					    	<th class="head3">제목</th>
					    	<th class="head5">작성일</th>
					    </tr>
					    <tbody class="style2">
						<%
						ArrayList<CommunityData> comu;
						Date now = new Date();
						SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					    String search = request.getParameter("search_select");
						if(search==null){
						    search ="";
						}
						String search_text = request.getParameter("search_text");
						if(search==""){
							if(cate.equals("all")){
								comu = ud.commu_all();
							
								for(int i=0; i<comu.size(); i++){					
									out.println("<tr class='bt_border'><td>"+comu.get(i).getComu_num()+"</td>");
									out.println("<td>"+comu.get(i).getId()+"</td>");
									out.println("<td class='replace_cate'>"+comu.get(i).getCategory()+"</td>");
									out.println("<td><a href='community_borde.jsp?no="+comu.get(i).getComu_num()+"'>"+comu.get(i).getComu_title()+"</a></td>");
									
									String wdt;
									String writedate = comu.get(i).getComu_date();
									Date wd = fm.parse(writedate);
									long diff = now.getTime() - wd.getTime();
									int daysDiff = (int) (diff / (24 * 60 * 60 * 1000));
									SimpleDateFormat simpleDateFormat;
									if(daysDiff<2){
										simpleDateFormat = new SimpleDateFormat("HH:mm"); 
									}
									else {
										simpleDateFormat = new SimpleDateFormat("MM-dd"); 
									}
									String strNowDate = simpleDateFormat.format(wd); 
									out.println("<td>"+strNowDate +"</td>");
								}
							}
							else {
								comu = ud.commu_cate(cate);
								
								for(int i=0; i<comu.size(); i++){					
									out.println("<tr class='bt_border'><td>"+comu.get(i).getComu_num()+"</td>");
									out.println("<td>"+comu.get(i).getId()+"</td>");
									out.println("<td class='replace_cate'>"+comu.get(i).getCategory()+"</td>");
									out.println("<td><a href='community_borde.jsp?no="+comu.get(i).getComu_num()+"'>"+comu.get(i).getComu_title()+"</a></td>");
									out.println("<td>"+comu.get(i).getComu_date() +"</td>");
								}
							}
						}
						else {
							comu = ud.commu_search(search, search_text);
							for(int i=0; i<comu.size(); i++){					
								out.println("<tr class='bt_border'><td>"+comu.get(i).getComu_num()+"</td>");
								out.println("<td>"+comu.get(i).getId()+"</td>");
								out.println("<td class='replace_cate'>"+comu.get(i).getCategory()+"</td>");
								out.println("<td><a href='community_borde.jsp?no="+comu.get(i).getComu_num()+"'>"+comu.get(i).getComu_title()+"</a></td>");
								out.println("<td>"+comu.get(i).getComu_date() +"</td>");
							}
						}
						%>
						</tbody>
					</table>
					<div class="search_box">
						<form name="search" action="community.jsp?cate=<%= cate%>">
							<input type="hidden" name="cate" value="all">
							<select name="search_select" id="search_select" class="search_select">
								<option value="search_title" <% if(search.equals("search_title")){%>selected="selected"<%}%>>제목</option>
								<option value="search_title_write" <% if(search.equals("search_title_write")){%>selected="selected"<%}%>>제목+내용</option>
						    	<option value="search_name" <% if(search.equals("search_name")){%>selected="selected"<%}%>>작성자</option>
							</select>
							<input type="text" name="search_text" class="search_text" <% if(search_text!=null){%>value="<%= search_text%>"<%}%>>
							<input type="submit" value="검색" class="btn btn_search" >
						</form>
					</div>
				</div>
				
			</div>
			
			
		</section>
<jsp:include page="Footer_baseform.jsp"/>
</body>
</html>