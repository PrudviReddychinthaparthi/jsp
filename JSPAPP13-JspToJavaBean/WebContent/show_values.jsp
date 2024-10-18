<%@ page import="com.nt.beans.StudentInfo" %>

<!-- locate java bean -->
<jsp:useBean id="st" class="com.nt.beans.StudentInfo" scope="session"/>
<!-- Read and display java bean properties -->
<b>sno= </b><jsp:getProperty name="st" property="sno"/><br>
<b>sname= </b><jsp:getProperty name="st" property="sname"/><br>
<b>sadd= </b><jsp:getProperty name="st" property="sadd"/><br>
<b>avg= </b><jsp:getProperty name="st" property="avg"/><br>

<b> Value are read and displayed from Java bean class obj.</b>