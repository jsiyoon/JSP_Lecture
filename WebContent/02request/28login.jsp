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
<%-- id, password파라미터를 post방식 전송 --%>
<form action="" method="post">
	id <input type="text" name="id"><br>
	pw <input type="text" name="password"><br>
	<input type="submit" value="전송">
</form>

<%-- id가 myid
password가 mypassword일떄만 로그인 성공 메시지 출력

그렇지 않으면
'아이디나 패스워드가 일치하지 않습니다'메시지 출력 --%>
<hr>

<%
String usrid = request.getParameter("id");
String usrpw = request.getParameter("password");

if(usrid != null && usrpw != null){
	if(usrid.equals("myid") && usrpw.equals("mypassword")){
		out.print("<p>로그인 성공</p>");
	}else{
		out.print("<p>아이디나 패스워드가 일치하지 않습니다.</p>");
	}
}
%>
</body>
</html>