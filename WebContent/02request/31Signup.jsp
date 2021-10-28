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
<h1>회원가입</h1>
<form action="" method="post">
	이름 : <input type="text" name="name"><br>
	이메일 : <input type="text" name="email"><br>
	비밀번호 : <input type="text" name="password"><br>
	<input type="submit" value="가입">
</form>

<hr>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String pw = request.getParameter("password");
%>
<h1>가입정보</h1>
이름: <%= name %><br>
이메일: <%= email %><br>
비밀번호: <%= pw %><br>

</body>
</html>