<%@page import="com.nt.*"%>

<!-- create/Locate Java bean class object -->
<jsp:useBean id="emp" class="com.nt.beans.Employee" scope="request" />

<!-- Write form data to Java bean class object -->
<jsp:setProperty property="*" name="emp" />

<!-- Create/Locate  Service class object -->
<jsp:useBean id="service" class="com.nt.service.PayslipGeneratorService"
	scope="application" />

<!-- invoke b.method -->

<%
service.paySlipGenerator(emp);
%>

<!-- Read the inputs and results from Java bean class obj and display on the browser -->
<h1 style="color: red; text-align: center">Employee paySlip Report</h1>
<table border="1" bgcolor="pink" align="center">
	<tr>
		<td>Employee Name</td>
		<td><jsp:getProperty property="ename" name="emp" /></td>
	</tr>
	<tr>
		<td>Employee Address</td>
		<td><jsp:getProperty property="eadd" name="emp" /></td>
	</tr>
	<tr>
		<td>Employee Basic Salary</td>
		<td><jsp:getProperty property="basicSalary" name="emp" /></td>
	</tr>
	<tr>
		<td>Employee Gross Salary</td>
		<td><jsp:getProperty property="grossSalary" name="emp" /></td>
	</tr>
	<tr>
		<td>Employee Net Salary</td>
		<td><jsp:getProperty property="netSalary" name="emp" /></td>
	</tr>
</table>

<br><br> <center><a href="emp_details.html">home</a></center>