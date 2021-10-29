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
<h1>main ex content</h1>
<jsp:include page="07request-param-ex-sub.jsp">
	<jsp:param name="food" value="apple"/>
	<jsp:param name="group" value="bts"/>
	<jsp:param name="song" value="butter"/>
</jsp:include>
</body>
</html>