<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<!-- As traditional for loop -->
<b> Using traditional for loop</b>
<table border="1" bgcolor="pink">
	<c:forEach var="i" begin="1" end="10" step="1">
		<tr>
			<td>2*${i} = ${2*i}</td>
		</tr>
	</c:forEach>
</table>
<hr>
<!-- As enhanced for loop -->
<b>Using enhanced for loop</b>
<jsp:scriptlet>String names[] = new String[] { "Raja", "Rani", "Chari", "Karan", "Anil" };
			request.setAttribute("namesList", names);</jsp:scriptlet>
<c:forEach var="name" items="${namesList}">
	<h1>${name}</h1>
</c:forEach>
<b>Using enhanced for loop</b>
<jsp:scriptlet><![CDATA[List<String> courses = new ArrayList();
			courses.add("java");
			courses.add(".net");
			courses.add("php");
			courses.add("python");
			request.setAttribute("coursesList", courses);]]></jsp:scriptlet>
<c:forEach var="course" items="${coursesList}">
	<h1>${course}</h1>
</c:forEach>