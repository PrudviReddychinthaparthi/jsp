
<%@page import="java.util.*,com.nt.model.*"%>

<%  //read request scope data
     List<Employee> empList=(List<Employee>)request.getAttribute("empDetails");
     String desg=request.getParameter("job");
%>

<%
     if(empList!=null && empList.size()!=0){ 
    	 int i=1;
    	 %>

<h1 style="color: red; text-align: center">
	Employees belonging to
	<%=desg%></h1>
<table align="center" bgcolor="cyan" border="1">
	<tr>
		<th>Sno</th>
		<th>empno</th>
		<th>ename</th>
		<th>desg</th>
		<th>salary</th>
		<th>grossSalary</th>
		<th>NetSalary</th>
	</tr>

	<%  for(Employee emp:empList){     %>
	<tr>
		<td><%=i++%></td>
		<td><%=emp.getEno() %></td>
		<td><%=emp.getEname() %></td>
		<td><%=emp.getDesg() %></td>
		<td><%=emp.getSalary() %></td>
		<td><%=emp.getGrossSalary() %></td>
		<td><%=emp.getNetSalary() %></td>
	</tr>
	<% }//for %>
</table>
<%    	 
     }//if
     else{  %>
<h1 style="color: red; text-align: center">Records not found</h1>
<%  }  %>

<br>
<br>
<center>
	<a href="JavaScript:showPrint()">print</a>
</center>

<script language="JavaScript">
     function showPrint(){
      frames.focus();
      frames.print();
    }
</script>

