<%@ page isELIgnored="false"%>



Cookie name:: ${cookie.JSESSIONID.name}
<br>
Cookie value (Session id):: ${cookie.JSESSIONID.value}
<br>

<b>context param db user value:: </b>${initParam.dbuser}<br>
<b>context param db password value:: </b>${initParam.dbpwd}<br>

<hr>
<b>uname request param value:: ${param.uname}</b>
<br>
<b>addrs request param values::
	${paramValues.addrs[0]},${paramValues.addrs[1]}</b>
<br>
<!-- http://localhost:3030/JSPApp15-EL/test.jsp?uname=%22Raja%22&addrs=%22hyd%22&addrs=%22bglr%22 -->
<hr>
<b>user-agent request header value:: ${header['user-agent']}</b>
<br>
<b>accept req header values::
	${headerValues['accept'][0]},${headerValues['accept'][1]}</b>