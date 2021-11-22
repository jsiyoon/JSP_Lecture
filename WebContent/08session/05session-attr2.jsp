<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, Integer> map = (Map<String,Integer>)session.getAttribute("foodMap");

if(map == null){
	map = new HashMap<>();
	session.setAttribute("foodMap", map); //기존 저장된 맵 받아오기
}

String food = request.getParameter("food");

if(food != null){
	if(map.get(food) == null){ //Map에 저장되어있지 않은 food일경우
		map.put(food,1); //key= food, value = 1 저장시킴
	}else{ //Map에 이미 저장되어있는 food인경우
		//key = food, value = 원래 값 +1 저장시킴
		map.put(food, map.get(food)+1);
	}
}
%>

<a href="05session-attr1.jsp">선택하기</a>

<div>
<h1>선택한 음식들</h1>
<ul>
	<%
	Set<String> keys = map.keySet();
	for(String key : keys){
	%> <%--맵을 사용하여 음식이름과, 그 음식을 몇번 선택했는지 출력 --%>
		<li><%= key %> : <%= map.get(key) %></li>
	<%	
	}
	%>
</ul>
</div>
</body>
</html>