<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<b>from core7.jsp</b>
<br>
<c:url var="file" value="core4.jsp" scope="request" />
<c:import url="${file}" />
<br>
<b>from core7.jsp (end)</b>