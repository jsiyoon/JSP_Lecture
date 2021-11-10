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
<h1>jstl out tag</h1>
<c:out value="hello"></c:out>
<hr>
<%
pageContext.setAttribute("attr1", "javascript");
%>
<c:out value="${attr1 }"/><br>
<c:out value="${attr2 }" default="없음"></c:out><br>
<c:out value="${attr1 }" default="없음"/><br>
<%-- value에 값이 없으면 default값 출력, value에 값이 있으면 default값 출력 안됨.--%>

<hr>
<c:out value="${attr2 }">값 없음</c:out><br>
<c:out value="${attr1 }">값 없음</c:out><br>
<%-- 값이 있으면 일반 string 출력되지 않고, 존재하는 값만 출력함 --%>

<hr>
<%
pageContext.setAttribute("attr3", "<script>alert('핵!!!');</script>");
%>

${attr3 }<br> <%--알람창 띄움 --%>
<c:out value="${attr3 }"/> <%--그대로 출력(out)함. --%>

</body>
</html>