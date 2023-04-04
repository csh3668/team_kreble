<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%> 
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*"%>

<%
		String id =request.getParameter("idin");
    String pw =request.getParameter("pw");
    String repw =request.getParameter("repw");
    String name =request.getParameter("name");
    String month=request.getParameter("month");
    String day=request.getParameter("day");

    String gender=request.getParameter("gender");
		if(gender.equalsIgnoreCase("man")){
		gender= "남자";
		}
		else{
		gender= "여자";
		}
    String mail1=request.getParameter("mail1");
    String mail2=request.getParameter("mail2");
    String phone=request.getParameter("phone");
    String phonenum=request.getParameter("phoneNum");
    String phonenum2=request.getParameter("phoneNum2");
    String firstnum=request.getParameter("firstNum");
		Connection conn = null;
  	Statement stmt = null;
	
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soccer","root","tmd514107");
	    if (conn == null) {
	      throw new Exception("데이터베이스에 연결할 수 없습니다.");
	    }
	    stmt= conn.createStatement();
	    String command = String.format("insert into testmember values ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s') ", id, pw, repw, name, month, day, gender, mail1,mail2,phone,phonenum,phonenum2,firstnum);
	    int rowNum = stmt.executeUpdate(command);
	    if (rowNum < 1) {
	    	throw new Exception("데이터를 DB에 입력할 수 없습니다.");
	    }

	}finally{
    try{
      stmt.close();
    }catch(Exception ignored){

    }
     try{
      conn.close();
    }catch(Exception ignored){

    }
    }
    request.setAttribute("id",id);
    request.setAttribute("pw",pw);
    request.setAttribute("repw",repw);
    request.setAttribute("name",name);
    request.setAttribute("month",month);
    request.setAttribute("day",day);
    request.setAttribute("mail1",mail1);
    request.setAttribute("mail2",mail2);
    request.setAttribute("phone",phone);
    request.setAttribute("phonenum",phonenum);
    request.setAttribute("phonenum2",phonenum2);
    request.setAttribute("firstnum",firstnum);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
  	dispatcher.forward(request, response);
%>