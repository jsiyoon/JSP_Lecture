<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>scriptlet : java code사용</h1>

<%
	//자바 기본 패키지 선언: 3번째줄
	out.println(new java.util.Date()); 
%>
</body>
</html>