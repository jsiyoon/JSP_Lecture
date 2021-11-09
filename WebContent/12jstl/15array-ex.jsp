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
<h1>foreach-array</h1>

<%
pageContext.setAttribute("arr", new String[] {"apple", "melon", "coffee", "milk"});
%>

<c:forEach items="${arr }" var="item">
	<p>${item }</p>
</c:forEach>
</body>
</html>