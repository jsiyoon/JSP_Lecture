<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("attr1", "val1");
request.setAttribute("attr2", "val2");
session.setAttribute("attr3", "val3");
application.setAttribute("attr4", "val4");
%>

<h1>jstl set tag</h1>
<%-- 기본값은 페이지 영역 --%>
<c:set var="attr5" value="val5"/>
${pageScope.attr1 } : ${pageScope.attr5 }<br>

<c:set var="attr6" value="val6" scope="request"/>
${requestScope.attr2 } : ${requestScope.attr6 }<br>

<c:set var="attr7" value="val7" scope="session"/>
${sessionScope.attr3 } : ${sessionScope.attr7 }<br>

<c:set var="attr8" value="val8" scope="application"/>
${applicationScope.attr4 } : ${applicationScope.attr8 }

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>