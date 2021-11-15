<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<style>
	table {
		border-collapse: collapse;
		width: 100%;
	}
	table, th, td {
		border: 1px solid black;
	}
	</style>

<title>Insert title here</title>
</head>
<body>
<%
List<Bean06> list = new ArrayList<>();
list.add(new Bean06("java", "kim", 10000, "알파", 300));
list.add(new Bean06("react", "lee", 15000,"베타", 100));
list.add(new Bean06("jsp", "park", 20000, "메타", 250));
list.add(new Bean06("vue", "choi", 25000, "세타", 70));
list.add(new Bean06("spring", "son", 30000, "한빛", 50));
list.add(new Bean06("mysql", "cha", 35000, "메기", 400));

pageContext.setAttribute("books", list);
%>
<h3>결과</h3>
<table>
	<tr>
		<th>#</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
		<th>출판사</th>
		<th>재고</th>
	</tr>
	<tr>
		<td>1</td>
		<td>java</td>
		<td>kim</td>
		<td>10000</td>
		<td>알파</td>
		<td>300</td>
		
	</tr>
	<tr>
		<td>2</td>
		<td>react</td>
		<td>lee</td>
		<td>15000</td>
		<td>베타</td>
		<td>100</td>
	</tr>
	<tr>
		<td>3</td>
		<td>jsp</td>
		<td>park</td>
		<td>20000</td>
		<td>메가</td>
		<td>250</td>
	</tr>
	<tr>
		<td>4</td>
		<td>vue</td>
		<td>choi</td>
		<td>25000</td>
		<td>세타</td>
		<td>70</td>
	</tr>
	<tr>
		<td>5</td>
		<td>spring</td>
		<td>son</td>
		<td>30000</td>
		<td>한빛</td>
		<td>50</td>
	</tr>
	<tr>
		<td>6</td>
		<td>mysql</td>
		<td>cha</td>
		<td>35000</td>
		<td>메기</td>
		<td>400</td>
	</tr>
</table>

<hr>
<h1>forEach</h1>
<table>
	<tr>
		<th>#</th>
		<th>제목</th>
		<th>저자</th>
		<th>가격</th>
		<th>출판사</th>
		<th>재고</th>
	</tr>
	
	<c:forEach items="${books }" var="book" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td>${book.title }</td>
			<td>${book.writer }</td>
			<td>${book.price }</td>
			<td>${book.publisher }</td>
			<td>${book.stock }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>