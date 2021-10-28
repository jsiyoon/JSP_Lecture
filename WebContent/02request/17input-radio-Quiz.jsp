<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>좋아하는 색 선택(하나만)</p>
<form action="">
	<input type="radio" name="color" value="red" id="">빨강
	<input type="radio" name="color" value="blue" id="">파랑
	<input type="radio" name="color" value="yellow" id="">노랑
	<input type="radio" name="color" value="purple" id="">보라
	<input type="radio" name="color" value="white" id="">흰색
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<%
String color = request.getParameter("color");
%>
<p>좋아하는 색:<%= color %></p>

<div style="width:100px; height:100px;
border: 2px solid black; background-color:<%= color %>">
</div>

</body>
</html>