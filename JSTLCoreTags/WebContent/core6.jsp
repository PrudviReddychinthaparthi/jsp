<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="msg" value="Hi, How are you ?" />
<c:forTokens var="token" items="${msg}" delims=" ">
${token}<br>
</c:forTokens>