<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- p>lorem + tap키 -->
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint
		nemo possimus debitis explicabo fugiat voluptatibus repellendus
		placeat ea perferendis deleniti corporis rerum ducimus non
		exercitationem quidem nihil architecto! Odit tempora.</p>
	<form>
		<input name="num"> <input type="submit">
	</form>

	<%
		List<String> list = new ArrayList<>();
	list.add("apple");
	list.add("phone");
	list.add("coffee");
	list.add("computer");
	%>

	<%
		String num = request.getParameter("num");
	%>

	<%
		switch (num) {
	case "0":
	case "1":
	case "2":
	case "3":
		int index = Integer.parseInt(num);
		out.println("<p>" + index + "번 상품은" + list.get(index) + "입니다.</p>");
		break;
	default:
		out.println("<p>해당 상품이 존재하지 않습니다.</p>");
		break;
	}
	%>

	<%-- num이 0~3이면 --%>
	<%-- num번 상품은 apple/ phone/ coffee/ computer입니다.  --%>

	<%-- 그렇지 않으면(null이거나 0~3이 아니면) --%>
	<%-- 해당 상품이 존재하지 않습니다. --%>
</body>
</html>