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
<h1>main1 contents</h1>
<%-- attribute(속성)로 객체를 전달 할 수 있다. --%>

<%-- list활용한 attribute --%>
<%
	ArrayList<String> list = new ArrayList<>();
	list.add("home");
	list.add("about");
	list.add("login");
	
	request.setAttribute("menuItems",list);
%>
<jsp:include page="05sub.jsp"></jsp:include>
</body>
</html>