<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>query string</h1>

<%-- url 마지막에 ?붙여 그 뒤에 나오는것 : queryString --%>
<p><%= request.getQueryString() %></p>
</body>
</html>