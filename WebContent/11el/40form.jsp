<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<form action="40to.jsp" method="post">
<input type="text" name="id" placeholder="아이디"><br>
<input type="password" name="password" placeholder="비밀번호"><br>
<textarea name="address" cols="30" rows="10" placeholder="주소"></textarea><br>
<input type="email" name="email" placeholder="이메일"><br>
<input type="submit" value="전송">
</form>
</body>
</html>