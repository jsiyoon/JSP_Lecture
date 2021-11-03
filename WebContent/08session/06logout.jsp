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
<%-- session삭제 --%>
<%
session.invalidate(); //세션 삭제 코드
%>
<a href="06login.jsp">로그인</a><br>
<a href="06main.jsp">메인페이지</a>
</body>
</html>