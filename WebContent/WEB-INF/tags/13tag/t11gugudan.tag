<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" type="java.lang.Integer"%>

<c:forEach begin="1" end="9" var="i">
	<p>${dan } X ${i } = ${dan*i }</p>
</c:forEach>