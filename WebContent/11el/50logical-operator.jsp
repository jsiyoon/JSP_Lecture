<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>논리 연산자</h1>
<h2>and 연산자 : 두항이 true일때만 true, 나머지는 false</h2>
<p>\${true && true } : ${true && true }</p>
<p>\${true && false } : ${true && false }</p>
<p>\${false && true } : ${false && true }</p>
<p>\${false && false } : ${false && false }</p>

<hr>

<h2>or : 두항이 false일때만 false, 나머지는 true</h2>
<p>\${true || true } : ${true || true }</p>
<p>\${true || false } : ${true || false }</p>
<p>\${false || true } : ${false || true }</p>
<p>\${false || false } : ${false || false }</p>

<hr>

<h2>not : false --> true, true --> false</h2>
<p>\${! true } : ${! true }</p>
<p>\${! false } : ${! false }</p>

<hr>

<h2>and</h2>
<p>\${true and true } : ${true and true }</p>
<p>\${true and false } : ${true and false }</p>
<p>\${false and true } : ${false and true }</p>
<p>\${false and false } : ${false and false }</p>

<hr>

<h2>or</h2>
<p>\${true or true } : ${true or true }</p>
<p>\${true or false } : ${true or false }</p>
<p>\${false or true } : ${false or true }</p>
<p>\${false or false } : ${false or false }</p>

<hr>
<h2>not</h2>
<p>\${not true } : ${not true }</p>
<p>\${not false } : ${not false }</p>
</body>
</html>