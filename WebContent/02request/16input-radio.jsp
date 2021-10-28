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
	<input type="radio" name="param" value="value1" id="">값1
	<input type="radio" name="param" value="value2" id="">값2
	<input type="radio" name="param" value="value3" id="">값3
	
	<br>
	
	<input type="radio" name="param2" value="val1" id="">val1
	<input type="radio" name="param2" value="val2" id="">val2
	<input type="radio" name="param2" value="val3" id="">val3
	<br>
	<input type="submit" value="전송">
</form>
<hr>
<%
String val = request.getParameter("param");
String val2 = request.getParameter("param2");
if(val != null){
	out.print(val);
}
out.print("<br>");
if(val2 != null){
	out.print(val2);
}
%>
</body>
</html>