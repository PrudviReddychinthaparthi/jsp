<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" info="test jsp page" session="false" buffer="8kb" autoFlush="true" isELIgnored="false"%>
    
    result:: ${4+5}
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP-PageDirective</title>
</head>
<body>
<%--
<% @page buffer="1kb" autoFlush="false"%>
				or
<% @page buffer="0kb" autoFlush="true"%>
<% for(int i=1;i<=4000;i++)
{
out.print("Raja:: "+i+"<br>")
//above one is valid combo
}
%>

<% @page buffer="0kb" autoFlush="false"%>
                 or
<% @page buffer="none" autoFlush="false"%>
<% for(int i=1;i<=4000;i++)
{
out.print("Raja:: "+i+"<br>")
//above one is Invalid combo
}
%>
 --%>
</body>
</html>