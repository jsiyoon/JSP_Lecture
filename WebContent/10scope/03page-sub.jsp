<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<div>
	<h1>sub page</h1>
	
	<%-- page는 하나의 페이지를 쓰기 때문에 밑의 코드는 실행되지 않음. --%>
	<%= pageContext.getAttribute("pageAttr2") %>
</div>