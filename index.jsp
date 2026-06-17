<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
	<c:when test="${empty sessionScope.user_id}">
		<c:redirect url="login.jsp"/>
	</c:when>
	<c:otherwise>
		<c:redirect url="main.jsp"/>
	</c:otherwise>
</c:choose>