<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessSendTimings.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
   <% String target="AdminComplicants.jsp?status=Timings is not send";
   try{
  
   String loginname=request.getParameter("client");
   String doctor=request.getParameter("doctor");
   String adate=request.getParameter("adate");
   String timings=request.getParameter("timings");

    SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MM-yyyy");
    java.util.Date ud2 = sdf2.parse(adate);		
	System.out.println(ud2);
	String s = ud2.toString();
	String dt = s.substring(8, 10);
	dt += "-"+s.substring(4, 7);
	dt += "-"+s.substring(24);
	System.out.println("Dt is: "+dt);	
	
    
    Booking abooking =new Booking();
    abooking.setLoginname(loginname);
   abooking.setDoctor(doctor);
   abooking.setAdate(dt);
   
   
   
   
   abooking.setTimings(timings);
   boolean flag=new BookingDAO().addBooking(abooking);
   if(flag)
   {
   boolean flag1=new DoctorDAO().updateStatus(loginname,doctor,adate);
   if(flag1)
   {
   target="AdminComplicants.jsp?status=Timings is send";
   }
   }
   }catch(Exception e)
   {
    }
    RequestDispatcher rd=request.getRequestDispatcher(target);
    rd.forward(request,response);%>
    <br>
  </body>
</html>
