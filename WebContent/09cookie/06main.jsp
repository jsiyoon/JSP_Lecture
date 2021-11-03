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
<h1>메인 콘텐츠</h1>
<%
String userid = (String)session.getAttribute("userid");

if(userid != null){
%>
	<p><%= userid %>님 반갑습니다</p>
	<a href="#">logout</a>
<%
}else{
%>
	<p>손님 반갑습니다.</p>
	<a href="06login-form.jsp">login</a>
<%
}
%>
</body>
</html>