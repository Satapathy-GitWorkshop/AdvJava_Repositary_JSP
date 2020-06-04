<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <h1 style="color:red;teext-align:center">Welcome to Directive Include</h1>
    <b><i><center>From a.jsp::::</center></i></b>
<br>
<b><center>Start.......</center></b><br>
<%@include file="b.jsp"%>
<br>
<b><center>End......</center></b>
<br>
<br>
Here Code only included to this not output and also no Seaparate JES class for (b.jsp)..