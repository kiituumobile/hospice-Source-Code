<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile"
	import="java.text.SimpleDateFormat"%> 

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %><html>
  <head>
  
    <title>My JSP 'ProcessUpdateDoctor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><%
  try{
  String target="UpdateDoctorDetails.jsp?status=Record Not Inserted";
   Profile rb = new Profile(); 
      rb.setLoginID(request.getParameter("doctor"));
     rb.setSpecilization(request.getParameter("specilization"));
	 /***********/
	 SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MM-yyyy");
    java.util.Date ud2 = sdf2.parse(request.getParameter("adate"));		
	System.out.println("ProcessUpdateDoctor.jsp date is "+ud2);
	String s = ud2.toString();
	String dt = s.substring(8, 10);
	dt += "-"+s.substring(4, 7);
	dt += "-"+s.substring(30);
	System.out.println(request.getParameter("adate"));
	System.out.println("Dt is: "+dt);	
	//java.sql.Date sd1 = new java.sql.Date(ud2.getTime());	 
//	acomplicants.setDateofavailablity(dt);      
		    rb.setAvailiabledate(dt);
			  //rb.setAvailiabledate(request.getParameter("adate"));
		        rb.setQualification(request.getParameter("qualification"));
		        rb.setHospitalname(request.getParameter("hospitalname")); 
  DoctorDAO adoctordao=new DoctorDAO();
boolean flag=adoctordao.updateDoctorDetails(rb);
 if(flag)
 {
 target="UpdateDoctorDetails.jsp?status=Record is Inserted";
 }
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response); 
  }catch(Exception e)
  {
  }%></body>
</html>