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
<h1>application getAttribute</h1>
<%-- application은 하나의 application을 공유하므로  --%>
<%-- 밑의 코드는 04application.jsp와 같은 애플리케이션을 공유해 실행이된다. --%>
<%= application.getAttribute("appAttr1") %>
</body>
</html>