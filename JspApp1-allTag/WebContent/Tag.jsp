<%@page import="java.util.Calendar"%>
<h1 style='color:red;text-align:center'>Working With All Tag</h1>

Date andTime:<%=new java.util.Date()%><br>
<%! 
   public String generateWishMessage(String name){
	java.util.Calendar calendar=null;
	int hour=0;
	//Get System date and Time
	calendar=Calendar.getInstance();
	//Get Current Hour of the Day
	hour=calendar.get(Calendar.HOUR_OF_DAY);
	//Putting Condition for Wish Message
	if(hour<12)
		return "Good Morning"+name;
	else if(hour<16)
	    return "Good AfterNoon"+name;
	else if (hour<20)
		return "Good Evening"+name;
	else 
		return "Good Night"+name;
}
%>


<% String user="Saurav";%>

Wish Message:<%=generateWishMessage(user)%>