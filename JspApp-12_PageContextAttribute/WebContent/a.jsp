<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%//Creating 4 Types of Attribte
pageContext.setAttribute("attr1", "val1");//page scope
pageContext.setAttribute("attr2", "val2",pageContext.REQUEST_SCOPE);//request scope
pageContext.setAttribute("attr3","val3",pageContext.SESSION_SCOPE);//session scope
pageContext.setAttribute("attr4","val4",pageContext.APPLICATION_SCOPE);//application scope
%>
<jsp:forward page="b.jsp"/>