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

<form action="">
	<input type="number" name="num1" id="">
	<select name="operator" id="">
		<option value="plus">+</option>
		<option value="minus">-</option>
		<option value="times">×</option>
		<option value="divide">÷</option>
	</select>
	<input type="number" name="num2" id="">
	<input type="submit" value="계산">
</form>

<hr>

<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
double res = 0;
String operator ="";

if(num1 == null || num1.isEmpty()){
	out.print("수1을 입력해주세요.<br>");
}else if(num2 == null || num2.isEmpty()){
	out.print("수2을 입력해주세요.<br>");
}else{
	double d1 = Double.parseDouble(num1);
	double d2 = Double.parseDouble(num2);
	
	switch(request.getParameter("operator")){
		case "plus": 
			res = d1 + d2;
			operator = "+";
			break;
		case "minus":
			res = d1 - d2;
			operator = "-";
			break;
		case "times":
			res = d1 * d2;
			operator = "×";
			break;
		case "divide":
			res = d1 / d2;
			operator = "÷";
			break;
		default:
	}
}
%>

num1 : <%= num1 %><br>
num2 : <%= num2 %><br>
operator : <%= request.getParameter("operator") %><br>
<div>결과 : <%= num1 %> <%= operator %> <%= num2 %> = <%= res %></div>
</body>
</html>