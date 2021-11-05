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
<%
String[] arr = {"apple", "banana", "melon"};
pageContext.setAttribute("arr",arr);
%>
<p>${arr[0] }</p>
<p>${arr[1] }</p>
<p>${arr[2] }</p>

<hr>

<%
for(int i = 0; i < arr.length; i++){
	pageContext.setAttribute("i", i);
%>
	<p><%= i %> : ${arr[i] }</p>
<%
}
%>
</body>
</html>