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
<title>Insert title here</title>
</head>
<body>
<%--버튼 효과  btn~ --%>
<button class="btn">Lorem.</button>
<button class="btn btn-primary">Suscipit.</button>
<button class="btn btn-secondary">Ipsa?</button>
<button class="btn btn-success">Distinctio.</button>
<button class="btn btn-info">Placeat.</button>
<button class="btn btn-warning">Quisquam!</button>
<button class="btn btn-danger">Sapiente.</button>
<button class="btn btn-dark">Aperiam.</button>
<button class="btn btn-light">Aspernatur?</button>
<button class="btn btn-link">Distinctio.</button>

<hr>
<%-- button크기 설정(btn-lg, btn-sm, btn-xm --%>
<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary">Suscipit.</button>
<button class="btn btn-secondary">Ipsa?</button>
<button class="btn btn-success">Distinctio.</button>
<button class="btn btn-info btn-sm">Placeat.</button>
<button class="btn btn-warning">Quisquam!</button>
<button class="btn btn-danger">Sapiente.</button>
<button class="btn btn-dark btn-xm">Aperiam.</button>
<button class="btn btn-light">Aspernatur?</button>
<button class="btn btn-link">Distinctio.</button>

<hr>
<%-- btn outline --%>
<button class="btn btn-outline-primary">Suscipit.</button>
<button class="btn btn-outline-secondary">Ipsa?</button>
<button class="btn btn-outline-success">Distinctio.</button>
<button class="btn btn-outline-info">Placeat.</button>
<button class="btn btn-outline-warning">Quisquam!</button>
<button class="btn btn-outline-danger">Sapiente.</button>
<button class="btn btn-outline-dark">Aperiam.</button>
<button class="btn btn-outline-light">Aspernatur?</button>
<button class="btn btn-outline-link">Distinctio.</button>

<hr>
<%--또다른 button --%>
<button class="btn btn-primary">lorem</button>
<input type="submit" value="submit" class="btn btn-primary">
<a href="#" class="btn btn-primary">이동버튼</a>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>