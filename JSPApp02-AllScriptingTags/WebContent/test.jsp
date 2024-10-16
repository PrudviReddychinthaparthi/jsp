<h1 style="color:red;text-align:center">JSP Implicit objects information</h1>

<br>
out object class name<%= out.getClass()%><br>
session object class name <%= session.getClass() %> <br>
request object class name <%= request.getClass() %> <br>
response object class name <%= response.getClass() %> <br>
config object class name <%= config.getClass() %> <br>
application object class name <%= application.getClass() %> <br>
page object class name <%= page.getClass() %> <br>
pageContext class name <%= pageContext.getClass() %> <br>

<%!
public void jspInit(){
	/* System.out.println("application object class name:: "+application.getClass());
	System.out.println("config object class name:: "+config.getClass()); */
	ServletConfig cg=getServletConfig();
	ServletContext sc=getServletContext();
	System.out.println("config object class name:: "+cg.getClass()+ " Hashcode:: "+cg.hashCode());
	System.out.println("application object class name:: "+sc.getClass()+ " Hashcode:: "+sc.hashCode());
}
%>

application object class name <%=application.getClass() %>   <%=application.hashCode() %> <br>
  config object class name <%=config.getClass() %>  <%=config.hashCode() %> <br>
  