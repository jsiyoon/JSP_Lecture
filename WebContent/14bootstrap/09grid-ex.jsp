<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<style>
div{
	text-align: center;
	border: 1px solid silver;
	
}
table{
	width: 100%
}
th{
	border: 4px solid skyblue;
}
table, tr, td {
	border: 2px solid skyblue;
}
.ad, .login, .video{
	height: 250px;
}

</style>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-7">
			<div class="ad">광고</div>
			<div class="table">
				<table>
					<tr>
						<th>Lorem.</th>
						<th>Distinctio.</th>
						<th>Rem!</th>
						<th>Soluta?</th>
						<th>Magnam.</th>
						<th>Eaque.</th>
					</tr>
					<tr>
						<td>Lorem.</td>
						<td>Doloribus!</td>
						<td>Veritatis!</td>
						<td>Cum.</td>
						<td>Enim!</td>
						<td>Harum.</td>
					</tr>
					<tr>
						<td>Lorem.</td>
						<td>Ex?</td>
						<td>Eaque.</td>
						<td>Fuga.</td>
						<td>Sit.</td>
						<td>Obcaecati.</td>
					</tr>
					<tr>
						<td>Lorem.</td>
						<td>Mollitia.</td>
						<td>Enim!</td>
						<td>Numquam.</td>
						<td>Atque.</td>
						<td>Vero.</td>
					</tr>
					<tr>
						<td>Lorem.</td>
						<td>Culpa.</td>
						<td>Porro.</td>
						<td>Mollitia.</td>
						<td>Ex!</td>
						<td>Ex.</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col">
			<div class="login">로그인</div>
			<div class="video">동영상</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>