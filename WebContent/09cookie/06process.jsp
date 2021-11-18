<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Cookie[] cookies = request.getCookies();//쿠키 값 불러오기

Cookie sessionCookie = null;
for (Cookie cookie : cookies) {
	String name = cookie.getName();
	
	//쿠키 유효시간 설정
	if (name.equals("JSESSIONID")) {
		sessionCookie = cookie;
		sessionCookie.setPath(request.getContextPath());
		sessionCookie.setHttpOnly(true);
		sessionCookie.setMaxAge(60*60);
		response.addCookie(sessionCookie);
	}
}
%>

<%
// 로그인 처리
String userid = request.getParameter("userid");
if (userid != null) { //userid 가 null일때 userid로 설정
	session.setAttribute("userid", userid);
}

// main.jsp 리디렉션
response.sendRedirect("06main.jsp");
%>
