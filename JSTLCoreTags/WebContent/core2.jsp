<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="msg" value="Welcome" />

<c:if test="${param.uname ne null }">
	<h1 style="color: red; text-align: center">
		<c:out value="${msg }" />
		<c:out value="${param.uname }" />
	</h1>
	<!-- http://localhost:3030/JSTLCoreTags/core2.jsp?uname=Raja -->
</c:if>
<hr>
<h2 style="color: greem; text-align: center">Hi Hello</h2>