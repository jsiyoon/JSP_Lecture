<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample01.Mybook" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<Mybook> books = (List<Mybook>)application.getAttribute("books");
if(books == null){
	books = new ArrayList<>();
	application.setAttribute("books", books);
}

String bookTitle = request.getParameter("title");
Integer	bookPrice = Integer.parseInt(request.getParameter("price"));

if(books != null){
	books.add(new Mybook(bookTitle, bookPrice));
}

response.sendRedirect("07book-list.jsp");
%>