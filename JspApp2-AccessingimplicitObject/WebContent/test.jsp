<h1 style='color:red;text-align:center'>Proof of Concept</h1>
<%!public void jspInit(){
	//Get Access to ServletConfig
	ServletConfig cg=getServletConfig();
	System.out.println("p2 initParam Value:"+cg.getInitParameter("p2"));
	//Get Access to ServletContext
	ServletContext sc=getServletContext();
	System.out.println("p1 Context ParamValue:"+sc.getInitParameter("p1"));
	}	
%>


p1 Context Param vlaue:<%=application.getInitParameter("p1")%><br>
p2 Init Param vlaue:<%=config.getInitParameter("p2")%>