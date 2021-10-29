<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="sample01.Mybook" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>main content</h1>

<%
	Mybook book1 = new Mybook("java tutorial", 30000);
	request.setAttribute("book",book1);
%>

<jsp:include page="06sub.jsp"></jsp:include>
</body>
</html>