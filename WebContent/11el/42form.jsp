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
<form action="42view.jsp" method="post">
<input type="text" name="name" placeholder="이름"><br>
<input type="checkbox" name="food" value="chocolate">chocolate<br>
<input type="checkbox" name="food" value="spaghetti">spaghetti<br>
<input type="checkbox" name="food" value="watermelon">watermelon<br>
<input type="submit" value="선택">
</form>
</body>
</html>