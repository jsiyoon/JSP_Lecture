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

<form action="">
	<input type="checkbox" name="movie" id="" value="HarryPotter">해리포터
	<input type="checkbox" name="movie" id="" value="Spiderman">스파이더맨
	<input type="checkbox" name="movie" id="" value="Ironman">아이언맨
	<input type="checkbox" name="movie" id="" value="Paracite">기생충
	<input type="checkbox" name="movie" id="" value="Frozen">겨울왕국
	<br>
	<input type="submit" value="영화선택">
</form>
<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if(movies != null){
	for(String movie : movies){
		out.print("<li>"+movie+"</li>");
	}
}
%>
</ul>
</body>
</html>