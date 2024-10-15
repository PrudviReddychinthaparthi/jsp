<b>Welcome to JSP</b>
<br>
<%
	out.println("date and time :: " + new java.util.Date());
%>
<br>
=====================================================
<br>
<%
	int a = 10;
	int b = 20;
	int c = a + b;
	out.println("result:: " + c);
%>
<br>
=====================================================
<br>
<%
	String broswerName = request.getHeader("user-agent");
	out.println("current browser name:: " + broswerName);
%>
<br>
=====================================================
<br>
<%-- <% public int sum(int x,int y);%> --%>
<%-- raises error--%>
<br>
<b>hello</b>
<br>
=====================================================
<br>
<%!int d = 10;%>
<%-- declarative tag //global variables,//method definitions,//inner classes definitions --%>
value::
<%=d%><%-- Expression tag --%>
<br>
square value::
<%=d * d%>
<br>
=====================================================
<br>
<%!int e = 10;%>
<%-- declarative tag //global variables,//method definitions,//inner classes definitions --%>
<%
	int e = 20;
%>
value (local) ::
<%=e%><%-- Expression tag --%>
<br>
value (global) ::
<%=this.e%><%-- Expression tag --%>
<br>
value (global) ::
<%=((first_jsp) page).e%><%-- Expression tag --%>
<br>
=====================================================
<br>
<%!public int sum(int x, int y) {
		return x + y;
	}%>
<%-- declarative tag //global variables,//method definitions,//inner classes definitions --%>

result of sum(10,20) ::
<%=sum(10, 20)%><%-- Expression tag --%>
<br>
=====================================================
<br>
<%!static {
		System.out.println("first.jsp :: static block");
	}

	public first_jsp() {
		System.out.println("first.jsp :: 0-param constructor");
	}

	public void jspInit() {
		System.out.println("first.jsp : jspInit() ");
	}

	public void jspDestroy() {
		System.out.println("first.jsp :: jspDestroy()");
	}%>
<%-- declarative tag //global variables,//method definitions,//inner classes definitions --%>

look at the server console for other print statements
<br>
<%
	out.println("first.jsp :: _jspService(-,-);");
%>
<br>
=====================================================
<br>

<%-- if(a<b)
		return "big value :: "+b;
	else if(a>b)
		return "big value :: "+a;
	else
		return "both are equal"; --%>
<%-- this code giveserror saying unterminated tag determined. To overcome that problem use <!CDATA[[----]]--%>
<%-- declaration tag --%>
<jsp:declaration>public String findBig(float a, float b) {<![CDATA[if (a < b)
			return "big value :: " + b;
		else if (a > b)
			return "big value :: " + a;
		else
			return "both are equal";]]>}</jsp:declaration>
result of (findBig(10,20) ::
<jsp:expression>findBig(10, 20)</jsp:expression><%-- Expression tag --%>
<br>
end of JSP
