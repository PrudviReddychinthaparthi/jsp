<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>request param names and values</h1>

<c:forEach var="p" items="${paramValues }">
	<b>request param name:: ${p.key}</b>
	<br>
	<b>request param values::</b>
	<c:forEach var="pv" items="${p.value}">
${pv},
</c:forEach><br>
</c:forEach>
<!-- http://localhost:3030/JSTLCoreTags/core5.jsp?uname=Raja&uadd=hyd&uadd=delhi -->
<hr>
<h1>request header names and values</h1>

<c:forEach var="h" items="${headerValues}">
<b>request header name:: ${h.key}</b><br>
<b>request header values::</b>
<c:forEach var="hv" items="${h.value}">
${hv},
</c:forEach><br>

</c:forEach>