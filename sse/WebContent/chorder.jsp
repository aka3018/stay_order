<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<%
Connection conn=null;
PreparedStatement pstmt = null; 
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
Boolean connect = false;
	
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"system","jung"); 
    connect = true;
    String sql = "UPDATE orders SET chorder='1' where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("num"));
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	response.sendRedirect("current.jsp");
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}

%>