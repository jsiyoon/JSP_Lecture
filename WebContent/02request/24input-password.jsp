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
<h1>로그인</h1>
<form action="" method="post"> <%-- post : url물음표 뒤에 붙지 않음(쿼리 붙지않음) --%>
	id
	<input type="text" name="userid"><br>
	pw
	<input type="password" name="password" id="" >
	<br>
	<input type="submit" value="로그인">
</form>

<hr>

userid: <%= request.getParameter("userid") %> <br>
password: <%= request.getParameter("password") %><br>
</body>
</html>