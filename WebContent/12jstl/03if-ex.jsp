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

<%-- 기존의 JSP : 스크립트코드 + HTML코드 뒤섞임 --%>
<% 
	String food = request.getParameter("food"); 
	if(food.equals("apple")){
%>
		<h3>사과 입니다.</h3>
<%
	}
%>

<hr>

<%-- JSTL을 사용한 if문 --%>
<c:if test="${param.food eq 'apple' }">
	<h3>사과 입니다.</h3>
</c:if>
</body>
</html>