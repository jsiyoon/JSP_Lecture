<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<h1>expression language(EL)</h1>
<p>작성법 : \${attribute }</p>
<p>jsp에 출력용으로 사용됨.</p>

<hr>
<h1>예제</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1");
pageContext.setAttribute("pageAttr2", 10000);
pageContext.setAttribute("pageAttr3", true);
%>
<p>java code : <%= pageContext.getAttribute("pageAttr1") %></p>
<p>el : ${pageAttr1 }</p>
<p>java code : <%= pageContext.getAttribute("pageAttr2") %></p>
<p>el : ${pageAttr2 }</p>
<p>java code : <%= pageContext.getAttribute("pageAttr3") %></p>
<p>el : ${pageAttr3 }</p>

<%-- 기본표현법 : 값이 없는 경우 null출력 --%>
<p>java code : <%= pageContext.getAttribute("pageAttr4") %></p>
<%-- EL : 값이 없는 경우 아무것도 출력하지 않음 --%>
<p>el : ${pageAttr4 }</p> 
</body>
</html>