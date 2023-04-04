<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%> 
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*"%>
<%
   String id= request.getParameter("id");
  Connection conn = null;
  Statement stmt = null;
  try{
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/soccer","root","tmd514107");
    if (conn == null) {
      throw new Exception("데이터베이스에 연결할 수 없습니다.");
    }
    stmt= conn.createStatement();
    ResultSet rs= stmt.executeQuery("select * from testmember where id = '"+ id +"';");
    if (!rs.next()) {
      out.println("true");
    }else{
      out.println("false");
    }
  }
  finally{
    try{
      stmt.close();
    }catch(Exception ignored){

    }
    try{
      conn.close();
    }catch(Exception ignored){

    }
  }

%>
