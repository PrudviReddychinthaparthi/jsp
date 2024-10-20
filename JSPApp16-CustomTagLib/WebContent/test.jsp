<%@ taglib uri="http://prudvi.com/nittags" prefix="nit"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom JSP Tag Library</title>
</head>
<body>
	<h1>
		<nit:printLabel />
	</h1>

	<nit:prime n="200" />
	<hr>
	<nit:prime/>
	
	<br><br>
<nit:display font="arial"  size="100">
        how are u ?
</nit:display>

<br><br>
<nit:display font="webdings"  size="60">
        fine , thank u
</nit:display>

</body>
</html>