<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Mybook book = (Mybook)request.getAttribute("book");
%>

<li><%= book.getTitle() %> : <%= book.getPrice() %></li>
