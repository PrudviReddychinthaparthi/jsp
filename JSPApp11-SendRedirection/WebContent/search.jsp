<b>start of jsp page</b>
<% String ss=request.getParameter("ss");
response.sendRedirect("https://www.google.com/search?q="+ss);
%>
<b>end of jsp</b>