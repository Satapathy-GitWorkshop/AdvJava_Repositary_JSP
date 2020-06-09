<%@page import="java.util.*" %>
<h1 style ="color:greeen;text-align:center">Source Jsp</h1>
<%    //Receiving req parameter 
   String ss=request.getParameter("ss");
//Forward the via redirect process
response.sendRedirect("https://www.google.com/search?q="+ss);
%>
<%=new Date()%>