<%@ page import="java.sql.*"%>

<%! 
Connection con;
PreparedStatement ps1;
PreparedStatement ps2;
ResultSet rs;
//ResultSet rs1;
int result=0;

public void jspInit(){
	
try{
	//Get access to Srvlet ConfigOBject
	ServletConfig cg=getServletConfig();
	//Receiving the init-param value
	String driver=cg.getInitParameter("driver");
	String url=cg.getInitParameter("url");
	String user=cg.getInitParameter("user");
	String pwd=cg.getInitParameter("pwd");
	//LOad DriverManager class
	Class.forName(driver);
	//Establishing the Connetion
	con=DriverManager.getConnection(url,user,pwd);
	//Create PreaparedStatement Objet
	ps1=con.prepareStatement("INSERT INTO PRODUCT VALUES(PID_SEQ2.NEXTVAL,?,?,?)");
	ps2=con.prepareStatement("SELECT PID,PNAME,PRICE,QTY FROM PRODUCT");
}//try
catch(SQLException se){
	se.printStackTrace();
}
catch(ClassNotFoundException cnf){
	cnf.printStackTrace();
}
catch(Exception e){
	e.printStackTrace();
}
}//jspinit()
%>

<%
 //Read additional req param (s1) value
 String pval1=request.getParameter("s1");

if(pval1.equalsIgnoreCase("link")){
	//execute seelct query that is made as precompiled sql query
	rs=ps2.executeQuery();%>

<table border="0"  bgcolor="cyan">
<tr bgcolor="red">
<th>PID</th><th>PNAME</th><th>PRICE</th><th>QTY</th>
<%
//process the result set
while(rs.next()){%>
<tr>
<td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getFloat(3)%></td><td><%=rs.getInt(4)%></td>
</tr>
<%
}//while
%>	
</table>
<%
}//if


else{
	//Read the Form Componnent value
	String name=request.getParameter("pname");
	float price=Float.parseFloat(request.getParameter("price"));
	int qty=Integer.parseInt(request.getParameter("Qty"));
	
	ps1.setString(1,name);
	ps1.setFloat(2,price);
	ps1.setInt(3,qty);
	if(ps1!=null)
	result=ps1.executeUpdate();
	 if(result==0){%>
		 <h3 style="color:green;text-align:center">Record Not Inserted</h3>
		  <%}//if %>
	  <%{//outer else%>
		  <h4 style="color:red;">Record Inserted</h4><br>
	
	<% }//else%>
	<a href="register.html">Home</a>
<% }//outer else%>


<%!  public void jspDestroy(){
try{
	if(rs!=null)
		rs.close();
}
catch(SQLException se){
	se.printStackTrace();	
}
try{
	if(ps2!=null)
		ps2.close();
}
catch(SQLException se){
	se.printStackTrace();	
}
try{
	if(con!=null)
		con.close();
}
catch(SQLException se){
	se.printStackTrace();	
}
}//destroy()
%>