<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
List<Mybook> books = new ArrayList<Mybook>();
books.add(new Mybook("java", 50000));
books.add(new Mybook("html", 30000));
books.add(new Mybook("spring", 70000));

for(Mybook book : books){
%>

	<p><%= book.getTitle() %> : <%= book.getPrice()%>원</p>
<%	
}
%>

</body>
</html>