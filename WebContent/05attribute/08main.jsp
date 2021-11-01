<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>
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
	List<Mybook> list = new ArrayList<>();
	list.add(new Mybook("abc", 30000));
	list.add(new Mybook("java", 20000));
	list.add(new Mybook("jsp", 10000));
	list.add(new Mybook("spring", 70000));
%>

<%
	request.setAttribute("books", list);
%>
<jsp:include page="08sub.jsp"></jsp:include>
</body>
</html>