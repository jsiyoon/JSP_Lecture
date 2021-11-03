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
String id = request.getParameter("userid");

if(id.equals("iamuser")){
%>
	<h1>메인 컨텐츠</h1>
<%
}else{
%>
	<script>
	alert("아이디나 패스워드가 일치하지 않습니다.");
	window.location.href = "12login-form.jsp";
	</script>
<%
}
%>
</body>
</html>