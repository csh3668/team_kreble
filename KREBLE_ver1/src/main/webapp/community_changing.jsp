<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="data" class="use_data.Database"/>
<%@ page import="use_data.CommunityData"%>
<%
	CommunityData cmd = new CommunityData();
	cmd.setComu_num(Integer.parseInt(request.getParameter("comu_no")));
	cmd.setId((String) session.getAttribute("ID"));
	cmd.setCategory(request.getParameter("cate"));
	cmd.setComu_title(request.getParameter("title"));
	cmd.setComu_write(request.getParameter("write"));
	data.commu_change(cmd);
	response.sendRedirect("community_after.jsp?after=change"); 
%>