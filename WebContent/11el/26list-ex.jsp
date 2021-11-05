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
List<String> list1 = new ArrayList<>();
list1.add("v");
list1.add("rm");
list1.add("jk");

String[] arr1 = {"jimin", "jin", "j-hope", "suga"};

pageContext.setAttribute("data1", list1);
pageContext.setAttribute("data2", arr1);
%>
<p>list1 : ${data1[0] }</p>
<p>list2 : ${data1[1] }</p>
<p>list3 : ${data1[2] }</p>
<p>list4 : ${data2[0] }</p>
<p>list5 : ${data2[1] }</p>
<p>list6 : ${data2[2] }</p>
<p>list7 : ${data2[3] }</p>
</body>
</html>