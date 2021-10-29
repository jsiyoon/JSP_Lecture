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
<h1>메인 컨텐츠(더하기 연산)</h1>
<jsp:include page="09request-param-ex-sub.jsp">
	<jsp:param name="num1" value="5"/>
	<jsp:param name="num2" value="6"/>
</jsp:include>
</body>
</html>