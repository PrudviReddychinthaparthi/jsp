<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<b>from core8.jsp</b>
<br>
<c:url var="googleUrl" value="https://www.google.com/search?q=java"
	scope="request" />
<c:redirect url="${googleUrl}"/>
<b>from core8.jsp (end)</b>