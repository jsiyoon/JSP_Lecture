<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<a href="25process.jsp?title=java&writer=lee&price=300&stock=10&publisher=apub">책 등록처리</a>

<hr>

<c:url value="25process.jsp" var="addSpringBookUrl" scope="page">
	<c:param name="title" value="spring"/>
	<c:param name="writer" value="son"/>
	<c:param name="price" value="10000"/>
	<c:param name="stock" value="22"/>
	<c:param name="publisher" value="bpub"/>
</c:url>

<a href="${addSpringBookUrl }">스프링 책 추가</a>
</body>
</html>