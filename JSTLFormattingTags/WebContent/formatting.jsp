<%@page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:setLocale value="de_DE" />

<fmt:formatNumber var="salary" value="4500000" type="currency" />
<b>SALARY:: ${salary}</b>
<br>
<fmt:formatNumber var="range" value="4500000.999" type="number"
	maxFractionDigits="3" maxIntegerDigits="10" minIntegerDigits="4" />
<b>RANGE:: ${range}</b>
<br>
<fmt:formatNumber var="avg" value="0.45" type="percent" />
<b>AVG:: ${avg}</b>
<br>
<jsp:useBean id="dt" class="java.util.Date" />
<fmt:formatDate value="${dt}" var="fdate" type="both" dateStyle="full" />
<b>DATE AND TIME:: ${fdate}</b>
<br>
<fmt:setBundle basename="com/nt/commons/App" />
<fmt:message var="message" key="welcome.msg" />
<br>
<b>Message is:: ${message}</b>