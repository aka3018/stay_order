<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ page import="java.sql.*" %>
<%
  
    request.setCharacterEncoding("UTF-8");
%>

  
<%!

public void insertMenu(int num, String menu, int amount , int price){
	
	Connection conn=null;
	PreparedStatement pstmt = null; 
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		
	Boolean connect = false;
		
	try{
	    Class.forName(driver);
	    conn=DriverManager.getConnection(url,"system","jung"); 
	    connect = true;
	    String sql = "INSERT INTO orders (num,menu,amount,price) VALUES (?, ?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, num);
		pstmt.setString(2, menu);
		pstmt.setInt(3, amount);
		pstmt.setInt(4, price);
		pstmt.executeUpdate();
	
		pstmt.close();
		conn.close();
	}catch(Exception e){
	    connect = false;
	    e.printStackTrace();
	}

}

public int integerString(String param){
	int numString = Integer.parseInt(param);
	return numString;
}
%>

<% 

Connection conn=null;
PreparedStatement pstmt = null; 
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
int num =1;
Boolean connect = false;
int totalAmount = 0;
	
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"system","jung"); 
    connect = true;
    ResultSet rs = null;
    String sql = "SELECT nvl(MAX(num)+1,1) as num from orders";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	rs.next();
	num = integerString(rs.getString("num"));

	pstmt.close();
	conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

</head>
<body>

<font size="5" style="color: #4682B4;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 주문 내역<br><br></font>
<font size ="3" style="color: #6495ED;" > 1번 테이블 </font><br/>

<% 


if(integerString(request.getParameter("pasta1")) > 0){
	insertMenu(num,"샐러드파스타",integerString(request.getParameter("pasta1")),6500);
	totalAmount += integerString(request.getParameter("pasta1"))*6500;
	out.println("샐러드파스타 "+request.getParameter("pasta1")+"개<br/>");
}

if(integerString(request.getParameter("pasta2")) > 0){
	insertMenu(num,"베이컨 크림 파스타",integerString(request.getParameter("pasta2")),6500);
	totalAmount += integerString(request.getParameter("pasta2"))*6500;
	out.println("베이컨 크림 파스타 "+request.getParameter("pasta2")+"개<br/>");
}

if(integerString(request.getParameter("gratin")) > 0){
	insertMenu(num,"김치 불고기 그라탕",integerString(request.getParameter("gratin")),7000);
	totalAmount += integerString(request.getParameter("gratin"))*7000;
	out.println("김치 불고기 그라탕 "+request.getParameter("gratin")+"개<br/>");
}

if(integerString(request.getParameter("risotto")) > 0){
	insertMenu(num,"해물 크림 리조또",integerString(request.getParameter("risotto")),6500);
	totalAmount += integerString(request.getParameter("risotto"))*6500;
	out.println("해물 크림 리조또 "+request.getParameter("risotto")+"개<br/>");
}

if(integerString(request.getParameter("pizza1")) > 0){
	insertMenu(num,"베이컨 포테이토 피자",integerString(request.getParameter("pizza1")),8500);
	totalAmount += integerString(request.getParameter("pizza1"))*8500;
	out.println("베이컨 포테이토 피자 "+request.getParameter("pizza1")+"개<br/>");
}

if(integerString(request.getParameter("pizza2")) > 0){
	insertMenu(num,"갈릭 베이컨 피자",integerString(request.getParameter("pizza2")),8000);
	totalAmount += integerString(request.getParameter("pizza2"))*8000;
	out.println("갈릭 베이컨 피자 "+request.getParameter("pizza2")+"개<br/>");
}

if(integerString(request.getParameter("pizza3")) > 0){
	insertMenu(num,"크림 고구마 피자",integerString(request.getParameter("pizza3")),7000);
	totalAmount += integerString(request.getParameter("pizza3"))*7000;
	out.println("크림 고구마 피자 "+request.getParameter("pizza3")+"개<br/>");
}

if(integerString(request.getParameter("pizza4")) > 0){
	insertMenu(num,"불고기 크림 치즈 피자",integerString(request.getParameter("pizza4")),7000);
	totalAmount += integerString(request.getParameter("pizza4"))*7000;
	out.println("불고기 크림 치즈 피자 "+request.getParameter("pizza4")+"개<br/>");
}
if(integerString(request.getParameter("chicken")) > 0){
	insertMenu(num,"치킨 바베큐",integerString(request.getParameter("chicken")),7000);
	totalAmount += integerString(request.getParameter("chicken"))*7000;
	out.println("치킨 바베큐 "+request.getParameter("chicken")+"개<br/>");
}
out.print("<br/>요청사항 : "+request.getParameter("ask")+"</br>");
out.print("<br/>총 "+totalAmount+"원");

%>

<font size ="3" style="color: #6495ED;"><br><br>주문이 완료되었습니다.<br><br> </font>
<iframe name="hid_func" style="display:none"></iframe>
<form name="frm" action="chorder.jsp" target="hid_func">

<input type = "submit" value = "확인" onclick="location.href='order.jsp'">
</form>
</body>
</html>