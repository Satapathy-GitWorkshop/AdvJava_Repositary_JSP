<!-- Receiving additional Param value -->
<%
float bill=Float.parseFloat(request.getParameter("bill"));
//Calculating  30% discount on this Total amount
float discount=bill*0.3f;
float netamt=bill-discount;
%>
<!-- Displaying the Details -->
<h1 style="color:violet;text-align:center">From Discount.jsp...</h1>
<b>Item Name:<%=request.getParameter("iname") %><br>
Item  Quantity:<%=request.getParameter("iqty") %><br>
Total Bill:<%=bill %><br>
Discount:<%=discount %><br>
NetAmount:<%=netamt %><br></b>
<a href="input.html">Home</a>
