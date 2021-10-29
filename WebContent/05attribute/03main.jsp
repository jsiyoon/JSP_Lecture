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
<h1>main content</h1>
<%-- 배열 사용한 get,set Attribute --%>

<%
String[] arr = {"jk","jin","rm","jimin"};
request.setAttribute("arr1", arr);
%>
<jsp:include page="03sub.jsp"></jsp:include>
</body>
</html>