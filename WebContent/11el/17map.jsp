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
<h1>map</h1>
<%
Map<String, String> map = new HashMap<>();
map.put("lang", "java");
map.put("song", "butter");
map.put("singer", "bts");
map.put("city", "seoul");
map.put("food", "chocolate");

pageContext.setAttribute("bean1", map);
%>
<p>map : ${bean1 }</p>
<p>lang : ${bean1.lang }</p>
<p>song : ${bean1.song }</p>
<p>signer : ${bean1.singer }</p>
<p>city : ${bean1.city }</p>
<p>food : ${bean1.food }</p>

</body>
</html>