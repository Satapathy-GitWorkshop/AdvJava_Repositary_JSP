<!-- Receving form Component -->
<% String name=request.getParameter("iname");
       float qty=Float.parseFloat(request.getParameter("iqty"));
       float price=Float.parseFloat(request.getParameter("iprice"));
       //Generating Billamount
       float billamt=qty*price;
%>
<%if (billamt>50000){%>
   <jsp:forward page="discount.jsp">
   <jsp:param value="<%=billamt %>" name="bill"/>
   </jsp:forward>
   <%}
   else{%>
   <h1 style="color:violet;text-align:center:">From Bill.jsp</h1>
   <b>Item Name:<%=name %><br>
          Item Quantity:<%=qty %><br>
          Item Price:<%=price %><br>
          Total Bill:<%=billamt %><br>
   </b>
           <%} %>
        <a href ="input.html">Home</a>