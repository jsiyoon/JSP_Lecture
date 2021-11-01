<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>
<% request.setCharacterEncoding("utf-8"); %>

<div>

<%
	ArrayList<Mybook> lists = (ArrayList<Mybook>) request.getAttribute("books");
%>
	<ul>
		<%
		for(Mybook list : lists){
		%>
		
		<li><%= list.getTitle() %> : <%= list.getPrice() %></li>
		
		<%
		}
		%>
	</ul>
</div>