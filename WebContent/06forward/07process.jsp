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
	String username = (String)request.getParameter("username");
%>
<%
if(username.equals("iamnormal")){
%>
	<jsp:forward page="07view1normal.jsp"></jsp:forward>
<%
}
else if(username.equals("iamvip")){
%>
<jsp:forward page="07view2vip.jsp"></jsp:forward>
<%
}
%>
</body>
</html>