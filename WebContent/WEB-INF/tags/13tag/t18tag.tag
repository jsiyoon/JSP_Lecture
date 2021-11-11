<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="attrs"%>

<ul>
	<c:forEach items="${attrs }" var="item">
		<li>${item.key } : ${item.value }</li>
	</c:forEach>
</ul>