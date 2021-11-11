<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
//1. 파라미터로 받은 값을 Bean06객체로 만들어
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String priceStr = request.getParameter("price");
String publisher = request.getParameter("publisher");
String stockStr = request.getParameter("stock");
int price = Integer.parseInt(priceStr);
int stock = Integer.parseInt(stockStr);

Bean06 book = new Bean06(title, writer, price, publisher, stock);

//2. application영역에 저장(db 저장)
List<Bean06> list = (List<Bean06>)application.getAttribute("books");
if(list == null){
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);

//3. 25list-book.jsp로 redirect
response.sendRedirect("25list-book.jsp");
%>