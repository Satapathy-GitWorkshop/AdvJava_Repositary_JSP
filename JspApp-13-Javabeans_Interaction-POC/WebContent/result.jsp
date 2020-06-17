<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <h1 style="color:blue;text-align:center">Bean class Property value are....</h1>
    
    <!-- Locate /Access the bean Class object values-->
    <jsp:useBean id="pt"  class="com.nt.beans.Person_beans" scope="session"></jsp:useBean>
    
<!-- Displaying the bean class Object Vlaue -->
   <b><i>Person_Name:</i></b> <jsp:getProperty property="pname" name="pt"/><br>
 <b><i>  Person_NO:</i></b> <jsp:getProperty property="pno"   name="pt"/><br>
  <b><i>Person_Address:</i></b>  <jsp:getProperty property="padds"   name="pt"/><br>
   <b><i>Total_Salary:</i></b> <jsp:getProperty property="sal"   name="pt"/><br>
    
    <b>Here the the bean Object value is access from session object (From Cookie)</b><br>
    <b>Mandatory to Loacte the Spring bean Class Object</b>
    
    