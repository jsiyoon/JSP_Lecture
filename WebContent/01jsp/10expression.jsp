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
<h1>expression</h1>

<%
//scriptlet
out.println(new Date());
%>

<%-- expression --%>
<%-- 파라미터의 값으로만 작성가능--%>
<%= new Date() %>

<%-- 
// 사용불가능.
// 문법오류- expression은 파라미터의 값으로만 작성해야함
if(3 > 5){
	System.out.println("프린트하기");
	}
 --%>
</body>
</html>