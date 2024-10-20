<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${param.p lt 0 }">
		<h1 style="color: red; text-align: center">${param.p}is Negative</h1>
		<!-- http://localhost:3030/JSTLCoreTags/core3.jsp?p=-120 -->
	</c:when>
	<c:when test="${param.p gt 0 }">
		<h1 style="color: red; text-align: center">${param.p}is Positive</h1>
		<!-- http://localhost:3030/JSTLCoreTags/core3.jsp?p=120 -->
	</c:when>
	<c:otherwise>
		<h1 style="color: red; text-align: center">${param.p }is ZERO</h1>
		<!-- http://localhost:3030/JSTLCoreTags/core3.jsp?p=0 -->
	</c:otherwise>
</c:choose>