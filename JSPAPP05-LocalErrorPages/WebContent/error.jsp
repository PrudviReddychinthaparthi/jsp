<%@ page isErrorPage="true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error jsp page]</title>
</head>
<body>
<h1 style="color:red;text-align:center">Internal problem Try again</h1>
<hr>
Problem is:: <%=exception.toString() %>
</body>
</html>