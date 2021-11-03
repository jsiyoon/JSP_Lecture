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
<h1>java web app의 4개의 영역(scope) - 책 132P</h1>
<ul>
	<li>page : 하나의 jsp페이지(pageContext)</li>
	<li>request : 하나의 http 요청(request)</li>
	<li>session : 하나의 브라우저(session)</li>
	<li>application : 하나의 웹 애플리케이션(application)</li>
</ul>
</body>
</html>