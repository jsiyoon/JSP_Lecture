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
<h1>post</h1>
<form action="" method="post"> <%-- 기본값은 get이므로 method:post는 꼭 선언해줘야함. --%>
	<input type="text" name="name">
	<input type="text" name="age">
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>