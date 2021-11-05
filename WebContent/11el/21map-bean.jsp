<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
//코드 작성
//page영역 attribute로 map객채를 data라는 이름으로 넣고
//map에 key, value값을 (key1(String), obj(Bean04))로 추가
Map<String, Bean04> map = new HashMap<>();
Bean04 val1 = new Bean04();
val1.setNickname("rm");
val1.setAge(29);
val1.setVip(true);

map.put("key1", val1);

pageContext.setAttribute("data", map);
%>
<p>${data.key1.nickname }</p>
<p>${data.key1.age }</p>
<p>${data.key1.vip }</p>

<hr>

<p>${data["key1"]["nickname"] }</p>
<p>${data["key1"]["age"] }</p>
<p>${data["key1"]["vip"] }</p>

<hr>
<p>${data[key1][nickname] }</p>
<p>${data[key1][age] }</p>
<p>${data[key1][vip] }</p>
</body>
</html>