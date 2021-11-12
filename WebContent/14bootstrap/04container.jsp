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
		background-color: silver;
	}
	.container{
		background-color: skyblue;
	}
	.container-fluid{
		background-color: springGreen;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores cum optio culpa totam nobis! Quidem velit inventore corrupti temporibus quis officia nesciunt voluptates ipsam iure enim omnis nostrum quam dolor.</div>

<hr>

<%-- container : 양옆의 여백 --%>
<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facere quae laborum rerum mollitia voluptatem ex modi suscipit tempora? Earum doloremque optio laudantium tempora similique dolores consequatur quis dolore praesentium. Perspiciatis.</div>

<%-- container-fluid : 양옆의 여백없이  꽉 채움 --%>
<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis ipsam mollitia corporis at accusamus aperiam fuga aliquam quos qui atque nemo cumque sit quas reiciendis et totam odio in illo.</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>