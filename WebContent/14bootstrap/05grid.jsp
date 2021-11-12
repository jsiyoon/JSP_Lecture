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
	.row{
		background-color: silver;
	}
	.row :nth-child(even){
		background-color:seaGreen;
	}
	.row :nth-child(odd){
		background-color: springGreen;
	}
</style>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>Lorem ipsum dolor sit amet.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sed deserunt fugiat officiis enim quidem quisquam ut reprehenderit velit quia inventore omnis accusantium praesentium consequuntur aliquid possimus quaerat tenetur tempora?</p>
</div>

<hr>

<div class="container">
	<div class="row">
		<div class="col">
			<h1>Lorem ipsum dolor sit amet.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis excepturi doloribus repudiandae ipsum officiis aperiam accusamus expedita neque error laborum. Odio aut corrupti facere fugiat voluptates ipsum quos placeat exercitationem!</p>
		</div>
	</div>
</div>

<hr>
<%-- container는 총 12마디로 나뉨 --%>
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Doloribus.</div>
		<div class="col">Sit.</div>
		<div class="col">Optio!</div>
		<div class="col">Ratione.</div>
		<div class="col">Necessitatibus!</div>
		<div class="col">Ullam.</div>
		<div class="col">Earum!</div>
		<div class="col">Rerum.</div>
		<div class="col">Iure.</div>
		<div class="col">Eveniet.</div>
		<div class="col">Modi.</div>
	</div>
</div>

<hr>

<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Doloremque.</div>
		<div class="col">Esse!</div>
		<div class="col">Explicabo.</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>