<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String parama = "a=java";
String paramb = "b=helloworld";
//String paramc = "c=자바";
String paramc = "c="+URLEncoder.encode("자바", "utf-8");
String location = "13querystring-encoding-to.jsp";
String loc = location +"?" + parama + "&" + paramb + "&" + paramc;
response.sendRedirect(loc);
%>