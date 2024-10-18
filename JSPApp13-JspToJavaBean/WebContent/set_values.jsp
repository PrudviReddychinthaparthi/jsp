<%@page import="com.nt.beans.StudentInfo"%>
<!-- locate java bean -->
<jsp:useBean id="st" class="com.nt.beans.StudentInfo" scope="session" />

<!--  set values to bean properties-->
<%-- <jsp:setProperty name="st" property="sno" value="1001" />
<jsp:setProperty name="st" property="sname" value="Raja" />
<jsp:setProperty name="st" property="sadd" value="Hyd" />
<jsp:setProperty name="st" property="avg" value="90.89" /> --%>

 <!-- setting form data as the java bean property values -->
<%-- <jsp:setProperty name="st" property="sno" param="stno" />
<jsp:setProperty name="st" property="sname" param="stname" />
<jsp:setProperty name="st" property="sadd" param="stadd" />
<jsp:setProperty name="st" property="avg" param="stavg" /> --%>
<%-- http://localhost:3030/JSPAPP13-JspToJavaBean/set_values.jsp?stno=1002&stname=%22Rakesh%22&stadd=%22Bglr%22&stavg=89.07 --%>

<!-- setting form data as Java bean property values use property="*" symbol
       if req param names are matching with java bean class obj property name
    -->
<jsp:setProperty name="st" property="*" />
<%-- http://localhost:3030/JSPAPP13-JspToJavaBean/set_values.jsp?sno=1003&sname=%22Rajesh%22&sadd=%22Chn%22&avg=91.98 --%>

<b> Value are set to Java bean class obj.</b>