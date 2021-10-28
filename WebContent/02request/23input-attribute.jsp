<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	<input type="text" name="param1" required value="필수 값"><br> <%-- 꼭입력해야하는 칸 --%>
	<input type="text" name="param2" value="초기값"><br> <%-- 초기값 지정 --%>
	<input type="text" name="param3" disabled><br> <%-- 아예입력불가 --%>
	<input type="text" name="param4" readonly><br> <%-- 읽기전용 칸 --%>
	<input type="text" name="param5" placeholder="힌트 예)이름 입력"><br> <%-- 실제로 입력되지않고 예시를 보여주는 역할 --%>
	<input type="text" name="param6"><br>
	<input type="text" name="param7" pattern="[0-9]{5}"><br>
	<input type="submit" value="전송"><br>
</form>

<hr>
param1 : <%= request.getParameter("param1") %><br>
param1 : <%= request.getParameter("param2") %><br>
param1 : <%= request.getParameter("param3") %><br>
param1 : <%= request.getParameter("param4") %><br>
param1 : <%= request.getParameter("param5") %><br>
param1 : <%= request.getParameter("param6") %><br>
param1 : <%= request.getParameter("param7") %><br>
</body>
</html>