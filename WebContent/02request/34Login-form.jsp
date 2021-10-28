<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/myjsp/02request/35Login-process.jsp" method="post">
	id : <input type="text" name="id">
	<br>
	password : <input type="text" name="password">
	<br>
	<input type="submit" value="로그인">
</form>
</body>
</html>