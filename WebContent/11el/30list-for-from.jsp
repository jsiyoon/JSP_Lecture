<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<String> list = new ArrayList<>();
list.add("apple");
list.add("google");
list.add("samsung");
list.add("lg");

session.setAttribute("data", list);
response.sendRedirect("30list-for-to.jsp");
%>