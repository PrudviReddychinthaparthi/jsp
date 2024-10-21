<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- setup datasource -->

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
	url="Jdbc:oracle:thin:@localhost:1521:orcl" user="prudvi"
	password="prudvi" />

<!-- send and execute the select SQL query -->

<sql:query var="rs" dataSource="${ds}"
	sql="SELECT EMPNO,ENAME,JOB,SAL FROM EMP" />

<h1>The records are::</h1>
<!-- process the ResultSet obj -->
<table border="1" align="center" bgcolor="pink">
	<tr>
		<th>Emp No</th>
		<th>Emp Name</th>
		<th>Job</th>
		<th>Salary</th>
	</tr>
	<c:forEach var="e" items="${rs.rows}">
		<tr>
			<th>${e.empno}</th>
			<th>${e.ename}</th>
			<th>${e.job}</th>
			<th>${e.sal}</th>
		</tr>
	</c:forEach>
</table>
