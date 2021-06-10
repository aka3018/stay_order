<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%

    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

</head>
<body>

<font size="5" style="color: #4682B4;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 주문 현황<br><br></font>

<% 

Connection conn=null;
PreparedStatement pstmt = null; 
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";

int num =1;
Boolean connect = false;
int totalAmount = 0;
String maxNum = "";
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"system","jung"); 
    connect = true;
    ResultSet rs = null;
    String sql = "SELECT num,menu,amount,price from orders where num = (select max(num) from orders) and chorder is null";
	pstmt = conn.prepareStatement(sql);
	
	rs = pstmt.executeQuery();
	int i =0;
	int count = 0;
	while(rs.next()){
		
		if(i==0 || i != Integer.parseInt(rs.getString("num"))){ 
			count ++;
			i = Integer.parseInt(rs.getString("num"));
			maxNum = rs.getString("num");
			out.print("<form method=\"post\" name=\"form\" action=\"chorder.jsp\">");
			out.print("<input type=\"checkbox\" name=\"num\" value='"+maxNum+"'/>"); 
			out.print("<font size =\"3\" style=\"color: #6495ED;\"> 1번 테이블</font><br/>");

		}
		   
	%>
		<%=rs.getString("menu")%> <%=rs.getString("amount")%>개 <br/>
	
	<% 
		
	}
	
	if(!maxNum.isEmpty()){
		
	%> 
		<br/>
			<input type="submit" value="확인"/>

		
	<% 	
	
	}
	
	if(count < 1){
	%> 
	
	<input type="checkbox" name="num" value='"+maxNum+"'/>
	<font size ="3" style="color: #6495ED;"> 1번 테이블</font><br/>

	
	<br/>
			<input type="button" value="확인"/>
	<% 		
	}
	
	pstmt.close();
	conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}


%>


</body>
</html>