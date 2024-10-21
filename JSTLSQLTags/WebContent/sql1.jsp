<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- setup datasource -->

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
	url="Jdbc:oracle:thin:@localhost:1521:orcl" user="prudvi"
	password="prudvi" />

<!-- send and execute the non-select SQL query -->

<sql:update var="rs" dataSource="${ds}"
	sql="UPDATE EMP SET SAL=SAL+? WHERE JOB=?">
	<sql:param value="500" />
	<sql:param>CLERK</sql:param>
</sql:update>

<b>${rs} no of records are updated</b>