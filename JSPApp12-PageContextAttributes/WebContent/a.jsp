<b>from a.jsp</b><br>
<% 
//Page scope attribute
pageContext.setAttribute("attr1","val1");
//request scope attribute
pageContext.setAttribute("attr2","val2",pageContext.REQUEST_SCOPE);
//session scope
pageContext.setAttribute("attr3","val3",pageContext.SESSION_SCOPE);
//application scope attribute
pageContext.setAttribute("attr4","val4",pageContext.APPLICATION_SCOPE);
%>

<jsp:forward page="b.jsp" />