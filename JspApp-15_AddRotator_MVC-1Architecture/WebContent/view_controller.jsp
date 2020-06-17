<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!-- Create or locate Service/Model class Object -->
<jsp:useBean id="service" class="com.nt.service.addRotator" scope="application"></jsp:useBean>

<!-- Callling the B.method for Generating sudo Code -->
<% 
     service.nextAddvertisement();
		//Enable AutoRefresh for the WebPage
		response.setIntHeader("refresh",1);
%>
<!-- Displaying the Advertiement -->
<div style="text-align:center;">
<a href="<jsp:getProperty property="link" name="service"/>">
<img src="<jsp:getProperty property="images" name="service"/> "height="500" width="400"/>
</a>
</div>
<br>
<br>
<p style="text-align:center ">This is rest of the Webpage having main Content of Webpage</p>



<!--
Note:: Its Work is to Refresh the WebPage after the given tme(second) is completed 
::::::     response.setIntHeader("refresh",1);
 -->
