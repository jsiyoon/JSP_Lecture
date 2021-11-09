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
<style>
	table {
		border-collapse: collapse;
		width: 100%;
	}
	table, th, td {
		border: 1px solid black;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("list", new String[] {"rm", "jk", "jimin", "v"});
%>

<c:forEach items="${list }" var="item" varStatus="status"><%--Loop TagStatus --%>
	${item } <br>
</c:forEach>
<hr>
<table>
	<tr>
		<th>item</th>
		<th>index</th>
		<th>count</th>
		<th>begin</th>
		<th>end</th>
		<th>step</th>
		<th>first</th>
		<th>last</th>
		<th>current</th>
	</tr>
	<c:forEach items="${list }" var="item" varStatus="status">
		<tr>
			<th>${item }</th>
			<th>${status.index }</th>
			<th>${status.count }</th>
			<th>${status.begin }</th>
			<th>${status.end }</th>
			<th>${status.step }</th>
			<th>${status.first }</th>
			<th>${status.last }</th>
			<th>${status.current }</th>
		</tr>
	</c:forEach>
</table>
</body>
</html>