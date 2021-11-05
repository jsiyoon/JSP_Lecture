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
Map<String, String> map = new HashMap<>();
map.put("name","donald");
map.put("Name","trump");
map.put("1","java");
pageContext.setAttribute("bean1",map);
%>
<p>name : ${bean1.name }</p>
<p>Name : ${bean1.Name }</p>
<p>Name : ${bean1["Name"]}</p>
<%-- <p>Name : ${bean1[Name] }</p>  -->출력하지 않음 --%>
<%-- <p>1 : ${bean1.1 }</p>  --> 오류발생(문법오류)--%>
<p>1 : ${bean1["1"] }</p>
</body>
</html>