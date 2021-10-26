<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<% 
//자바코드 작성
//소스코드와 웹에 결과물 바로 출력됨.
for(int i = 0; i < 5; i++){
	out.write("<p>스크립트릿으로 작성한 html</p>\r\n");
}
%>

<script> 
//스크립트 자체는 소스에 출력되고
//웹에는 출력문만 출력 -> 웹 서버가 또하나의 컴퓨터로 웹서버에서 처리
//사용자가 직접작성하는 컴퓨터, 웹 서버가 처리하는 컴퓨터가 있다고 보면됨.
	for(let i = 0; i < 5; i++){
		document.write("<p>js로 작성한 html</p>")
	}
</script>
</body>
</html>