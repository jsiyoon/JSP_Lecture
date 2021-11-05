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
<h1>09to.jsp</h1>
<p>java code : <%= session.getAttribute("city") %></p>
<p>el : ${city }</p>
<p>java code : <%= session.getAttribute("pop") %></p>
<p>el : ${pop }</p>
<p>java code : <%= session.getAttribute("vip") %></p>
<p>el : ${vip }</p>
<p>java code : <%= session.getAttribute("pi") %></p>
<p>el : ${pi }</p>
</body>
</html>