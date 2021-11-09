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
<h1>if tag</h1>
<c:if test="${param.name == 'donald' && param.age == 22 }" var="mytest">
	<h1>트루일 때만 실행</h1>
</c:if>

<c:if test="${param.name == 'donald' && param.age == 22 }">
	<h1>트루일 때만 실행</h1>
</c:if>

<%-- 같은 조건 var로 이름을 설정해두어 요약해서 사용가능. --%>
<c:if test="${mytest }">
	<h1>트루일 때만 실행3</h1>
</c:if>
</body>
</html>