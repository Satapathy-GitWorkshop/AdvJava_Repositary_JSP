<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<h1 style="color:blue;text-align:center">Bean class Property are set.....</h1>

<!-- Creating Object and Locating the bean Class Object -->
<jsp:useBean id="pt"  class="com.nt.beans.Person_beans"  scope="session"/>

<!-- Setting the Value to bean class Object  -->
<%-- <jsp:setProperty property="pname" name="pt"  value="Saurav"/>
<jsp:setProperty property="pno"   name="pt"  value="101"/>
<jsp:setProperty property="padds"  name="pt"  value="Odisha"/>
<jsp:setProperty property="sal"   name="pt"  value="23000"/> --%>

<!-- Setting value through request param -->

 <%-- <jsp:setProperty property="pname" name="pt"  param="name"/>
<jsp:setProperty property="pno"   name="pt"  param="no"/>
<jsp:setProperty property="padds"  name="pt"  param="adds"/>
<jsp:setProperty property="sal"   name="pt"  param="salary"/>  --%>

<!-- 
Request param url are::::::::::::::::::::::::::::::
http://localhost:6565/JspApp-13-Javabeans_Interaction-POC/process.jsp?name=chiku&no=100&adds=balasore&salary=30000 
-->


<!-- if request param name are matching with bean property name then we can use property="*"  -->
<jsp:setProperty property="*" name="pt"/>






<b>Here the bean object will Stored in Session Object</b><br>
<b>In between name and property tag Space is Mandatory</b>