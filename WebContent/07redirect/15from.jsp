<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>

<%-- Map을 사용하여 redirect --%>
<%
Map<String, String> map = new HashMap<>();
map.put("param1", "자바");
map.put("param2", "hello world");
map.put("param3", "스프링");

String loc = "?";
Set<String> keys = map.keySet();
for(String key : keys){
	loc += key + "=";
	loc += URLEncoder.encode(map.get(key), "utf-8");
	loc += "&";
}

if(map.size() > 0){
	loc = loc.substring(0,loc.length()-1);
}

response.sendRedirect("15to.jsp" + loc);
%>