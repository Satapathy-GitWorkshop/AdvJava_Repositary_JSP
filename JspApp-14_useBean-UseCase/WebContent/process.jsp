<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- Read Form Component Value -->
<% 
String name=request.getParameter("ename");
int no=Integer.parseInt(request.getParameter("eno"));
String adds=request.getParameter("eadd");
float sal=Float.parseFloat(request.getParameter("esal"));
%>

<!-- Locate/Create Employee_dt0 Class Object -->
<jsp:useBean id="edt"  class="com.nt.dto.Employe_dto"  scope="request"/>

<!-- Setting the request Parameter value to bean Class -->
<jsp:setProperty property="ename" name="edt"  value="<%= name%>"/>
<jsp:setProperty property="eno" name="edt"  value="<%= no%>"/>
<jsp:setProperty property="eadd" name="edt"  value="<%=adds %>"/>
<jsp:setProperty property="esal" name="edt"  value="<%=sal %>"/>

<!-- Creating ServiceReport Class Object/Access the data from Application_Scope -->
<jsp:useBean id="service"  class="com.nt.service.ServiceReport"   scope="application"/>

<!-- Calling Service class method having dto Class Object -->
<%
service.generateSalaryReport(edt);
%>
<!-- Getting the Result From dto Class-->
Employee Name:: <jsp:getProperty property="ename" name="edt"/><br>
Employee No::<jsp:getProperty property="eno" name="edt"/><br>
Employee Adds::<jsp:getProperty property="eadd" name="edt"/><br>
Employee BasicSalary::<jsp:getProperty property="esal" name="edt"/><br>
Employee GrossSalary::<jsp:getProperty property="gsal" name="edt"/><br>
Employee NetSalary::<jsp:getProperty property="nsal" name="edt"/><br>

<a href="input.html">Home</a>