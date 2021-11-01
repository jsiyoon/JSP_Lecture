<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String pageCode = request.getParameter("code");

switch(pageCode){
case "a" :
%>
	<jsp:forward page="/06forward/09pagea.jsp"></jsp:forward>
<%	
	break;
case "b" :
%>
	<jsp:forward page="/WEB-INF/view/06forward/09pageb.jsp"></jsp:forward>
<%
	break;
}
%>