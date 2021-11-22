<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col">
			<h1>공급자들</h1>
			<table class="table">
				<thead>
					<tr>
						<th>ID</th>
						<th>상픔 이름</th>
						<th>계약 이름</th>
						<th>주소</th>
						<th>도시</th>
						<th>우편번호</th>
						<th>나라</th>
						<th>번호</th>
					</tr>
				</thead>
				<tbody>
				 	<c:forEach items="${list }" var="sup">
				 		<tr>
					 		<td>${sup.supplierID }</td>
					 		<td>${sup.supplierName }</td>
					 		<td>${sup.contactName }</td>
					 		<td>${sup.address }</td>
					 		<td>${sup.city }</td>
					 		<td>${sup.postalCode }</td>
					 		<td>${sup.country }</td>
					 		<td>${sup.phone }</td>
				 		</tr>
				 	</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>