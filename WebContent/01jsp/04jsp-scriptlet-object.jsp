<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//요소 사용해 출력하면 웹 소스에 그대로 사용되고
//출력문에서 문자열로 그대로 출력함.

//그냥문자열로 입력하면 웹소스와 출력문에서 둘다 그냥 문자열로 출력.

out.write("hello jsp"); //요소아닌 그냥 문자열 출력
out.write("<p>hello jsp</p>");//요소사용해 출력
out.print("hello out object");
out.println("<p>hello out println</p>");
out.println("<p>implicit object 8개</p>");
%>
</body>
</html>