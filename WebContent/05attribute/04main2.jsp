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
<h1>main2 contents</h1>

<%
String[] list = {"home","about","login","logout"};
request.setAttribute("menuItems", list);
%>

<jsp:include page="04sub.jsp"></jsp:include>
</body>
</html>