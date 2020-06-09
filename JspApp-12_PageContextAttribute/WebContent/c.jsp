<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <h1><b><center>From c.jsp pages</center></b></h1>
<!-- Reading attribute Value -->
<h1><b>From getAttribute(-)</b></h1>
Page Scope:<%= pageContext.getAttribute("attr1")%><br>
Request Scope:<%= pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE)%><br>
Session Scope:<%= pageContext.getAttribute("attr3",pageContext.SESSION_SCOPE)%><br>
Application Scope:<%= pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE)%><br>

<h1><b>From findAttribute(-)</b></h1>
Page Scope:<%= pageContext.findAttribute("attr1")%><br>
Request Scope:<%=pageContext.findAttribute("attr2")%><br>
Session Scope:<%=pageContext.findAttribute("attr3") %><br>
Application Scope:<%= pageContext.findAttribute("attr4")%><br>
