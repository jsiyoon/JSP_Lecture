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
	<textarea name="text1" id="" cols="30" rows="10"></textarea>
	<input type="submit" value="전송">
	<input type="text" name="text2" id="">
</form>
<hr>
<%
String txt = request.getParameter("text1");
%>
<div><%=txt %></div>

<hr>

<!-- 수정불가능한 textarea  -->
<textarea name="" id="" cols="30" rows="10" readonly><%=txt %></textarea>
<div><%=txt %></div>
</body>
</html>