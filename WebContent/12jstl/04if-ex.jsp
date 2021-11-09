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
<c:if test="${param.name eq null}">
	<p>손님 반갑습니다.</p>
</c:if>
<c:if test="${param.name ne null}">
	<p>${param.name }님 반갑습니다.</p>
</c:if>

<p>${empty param.name ? '손' : param.name }님 반갑습니다.</p>
</body>
</html>