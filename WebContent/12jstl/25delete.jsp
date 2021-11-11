<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<Bean06> list = (List<Bean06>) application.getAttribute("books");
String indexStr = request.getParameter("index");
int index = Integer.parseInt(indexStr);

list.remove(index);

response.sendRedirect("25list-book.jsp");
%>