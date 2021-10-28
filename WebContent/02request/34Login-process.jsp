<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("password");

if(id != null && pw != null){
	if(id.equals("myid") && pw.equals("mypassword")){
%>
		<h1>로그인 성공</h1>
<%
	}else{
%>
		<h1>아이디나 패스워드가 일치하지 않습니다</h1>
<%
	}
}
%>
<hr>
<a href="<%= request.getContextPath() %>/02request/34Login-form.jsp"><로그인 페이지로 돌아가기></a>
</body>
</html>