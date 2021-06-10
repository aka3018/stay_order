<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<%
Connection conn=null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
Boolean connect = false;
	
try{
    Class.forName(driver);
    conn=DriverManager.getConnection(url,"system","jung"); //자신의 아이디와 비밀번호
    connect = true;
    conn.close();
}catch(Exception e){
    connect = false;
    e.printStackTrace();
}
%>
<%
if(connect==false){%>

    연결에 실패하였습니다.
<%}%> 

 
<!DOCTYPE html>
<html>
<head>
<script language="javascript">

</script>
<link rel="stylesheet" href="css/design.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
.button{
 width:90px;
 height:40px;
 font-size: 14px;
text-decoration: none;
margin: 5px 50px 50px 128px;
border-radius:10px;
background-color: #fff;
	border:2px solid #D2B48C;
	color: #DEB887;
}
.image1 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 160px;
border: 5px double #FFD700;
position: absolute;
}

.image2 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 310px;
border: 5px double #FFD700;
position: absolute;
}

.image3 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 460px;
border: 5px double #FFD700;
position: absolute;
}

.image4 {
 position: relative;
float: right;
width: 90px; height: 90px;
left: 220px; top: 610px;
border: 5px double #FFD700;
position: absolute;
}

.image5 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 865px;
border: 5px double #FFD700;
position: absolute;
}

.image6 {

float: right;
width: 90px; height: 90px;
left:220px; top: 1015px;
border: 5px double #FFD700;
position: absolute;
}
.image7 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 1165px;
border: 5px double #FFD700;
position: absolute;
}

.image8 {
 
float: right;
width: 90px; height: 90px;
left: 220px;top: 1315px;
border: 5px double #FFD700;
position: absolute;
}

.image9 {

float: right;
width: 90px; height: 90px;
left: 220px; top: 1440px;
border: 5px double #FFD700;
position: absolute;
}

.image10 {
 
float: right;
width: 90px; height: 90px;
left: 220px; top: 1550px;
border: 5px double #FFD700;
position: absolute;
}
.align{ margin-left: 100px; }
.align2{ margin-left: 70px; }
.align3{ margin-left: 70px; }


.select1{
 position: relative;
width: 30px; 
 top: -1423px; 
 left:118px;
 }
 
 
 .select2{
 position: relative;
 width: 30px; 
top: -1293px; 
 left:118px;
 }
 
 .select3{
  position: relative;
width: 30px; 
top: -1165px; 
left: 118px;
 }
  .select4{
  position: relative;
width: 30px; 
top: -1036px; 
left: 118px;
 }
 
 .select5{
  position: relative;
width: 30px; 
top: -805px; 
left: 118px;
 }
 
  .select6{
  position: relative;
width: 30px; 
top: -676px; 
left: 118px;
 }
 
  .select7{
  position: relative;
width: 30px; 
top: -547px; 
left: 118px;
 }
 
  .select8{
  position: relative;
width: 30px; 
top: -418px; 
left: 118px;
 }
 
   .select9{
  position: relative;
width: 30px; 
top: -205px; 
left: 118px;

 }
 
    .demand{
  position: relative;
width: 30px; 
top: -130px; 
left: 100px;

 }
</style>

</head>
<body>

<h1 class="align" style="color: #FF7F50;"> &nbsp; &nbsp;Table1</h1>
<h3 class="align2" style="color: darkorange;"> &nbsp; &nbsp; &nbsp;PASTA & GRATIN<br></h3>

<center>
<img class="image1" src='image/pasta.jpg'>
</center>

<font size="3"><br><br><b><b><b><b> &nbsp; &nbsp; &nbsp; &nbsp; 샐러드파스타</b> </font>
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp; 6500원 </font>

     

<center>
<img class="image2" src='image/cream.jpg'>
</center>
<font size="3"><br><br><br><br><br><b>&nbsp; &nbsp;  &nbsp; &nbsp; 베이컨 크림 파스타</b> </font>
<font size="3"><br> &nbsp; &nbsp; &nbsp; &nbsp; 6500원 </font>

<center>
<img class="image3" src='image/gratin.jpg'>
</center>
<font size="3"><br><br><br><br><br><b> &nbsp; &nbsp;  &nbsp; &nbsp; 김치 불고기 그라탕</b></font>
<font size="3"><br> &nbsp; &nbsp; &nbsp; &nbsp; 7000원 </font>

 <center>
<img class="image4" src='image/risotto.jpg'>
</center>
<font size="3"><br><br><br><br><br><b>  &nbsp; &nbsp;  &nbsp; &nbsp; 해물 크림 리조또</b></font>
<font size="3"><br> &nbsp; &nbsp; &nbsp; &nbsp; 6500원 </font>

<h2 class="align" style="color: darkorange;" ><br><br><br> &nbsp; &nbsp; &nbsp; PIZZA <br></h2>

<center>
<img class="image5" src='image/pizza.jpg'>
</center>

<font size="3"><br><br><b> &nbsp; &nbsp; &nbsp; &nbsp; 베이컨 포테이토 피자</b> 
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp;  8500원 </font>

<center>
<img class="image6" src='image/pizza2.jpg'>
</center>

<font size="3"><br><br><br><br><br><b>&nbsp; &nbsp; &nbsp; &nbsp;갈릭 베이컨 피자</b>  </font>
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp;8000원 </font>

<center>
<img class="image7" src='image/고구마.jpg'>
</center>


<font size="3"><br><br><br><br><br><b>&nbsp; &nbsp; &nbsp; &nbsp;크림 고구마 피자</b>  </font>
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp;7000원 </font>



<center>
<img class="image8" src='image/불고기.jpg'>
</center>


<font size="3"><br><br><br><br><br><b>&nbsp; &nbsp; &nbsp; &nbsp;불고기 크림 치즈 피자</b>  </font>
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp;7000원 </font>



<h4 class="align3" style="color: darkorange;"><br><br><br><br>&nbsp; &nbsp; &nbsp;CHICKEN BARBECUE <br></h4>

<center>
<img class="image10" src='image/chicken.jpg'>
</center>

<font size="3"><br><br><b>&nbsp; &nbsp; &nbsp; &nbsp;치킨바베큐</b> </font>
<font size="3"><br>&nbsp; &nbsp; &nbsp; &nbsp;7000원 </font>


 <form name="orderform" action='orderlist.jsp' method="post" >
 <div class ='select1'>
    <select name="pasta1"  >
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
     
     <div class ='select2'>
    <select name="pasta2"  >
         <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
 
     <div class ='select3'>
    <select name="gratin"  >
         <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
     
       <div class ='select4'>
    <select name="risotto"  >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
 
 <div class ='select5'>
    <select name="pizza1"  >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
     
      <div class ='select6'>
    <select name="pizza2"  >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
        </div>
        
        <div class ='select7'>
    <select name="pizza3"  >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
     </div>
     
     <div class ='select8'>
    <select name="pizza4" >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
        </div>
        
         <div class ='select9'>
    <select name="chicken" >
         <option value="0">0</option> 
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        </select>
        </div>
        
       <div style="position: relative; left:100px; top:-95px;">
      <font size="2" style="color: #FF7F50;"> 요청사항</font>
      </div>
        <div class='demand'>
       <br><br><input type="text" name="ask"><br>      
        
        </div>  
        <input type = "submit" value = "주문하기" class='button '/>
    
       </form>

</body>
</html>