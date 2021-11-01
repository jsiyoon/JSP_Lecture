<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String code = request.getParameter("code");
%>

<%
if("food".equals(code)){
	String[] food = {"chocolate", "pizza", "chicken", "hamburger"};
	request.setAttribute("food", food);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<%
}
else if("song".equals(code)){
	List<String> song = new ArrayList<>();
	song.add("butter");
	song.add("fire");
	song.add("idol");
	song.add("fake love");
	request.setAttribute("song", song);
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<% 
}
%>