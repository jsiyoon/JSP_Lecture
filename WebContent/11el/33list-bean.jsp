<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
List<Bean04> list = new ArrayList<>();
Bean04 b1 = new Bean04();
b1.setNickname("rm");
b1.setAge(29);

Bean04 b2 = new Bean04();
b2.setNickname("jimin");
b2.setAge(28);

list.add(b1);
list.add(b2);

pageContext.setAttribute("list", list);
%>
<p>${list[0].nickname } : ${list[0].age }</p>
<p>${list[1].nickname } : ${list[1].age }</p>
</body>
</html>