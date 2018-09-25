<%@ page language="java" import="java.util.*" import="java.text.SimpleDateFormat" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'processComplicant.jsp' starting page</title>
    
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
    String target="Complicants.jsp?status=Complicant is not send";
    String patientname=request.getParameter("loginname");
    String complication=request.getParameter("complication");
    String adate=request.getParameter("adate");
    System.out.println("adate>>>>>>>>>>>>>>>>>>>>*********"+adate);
    String timings=request.getParameter("timings"); 
    Complicants acomplicants=new Complicants();
    acomplicants.setLoginname(patientname);   
    
    SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MM-yyyy");
    java.util.Date ud2 = sdf2.parse(adate);		
	System.out.println(ud2);
	String s = ud2.toString();
	String dt = s.substring(8, 10);
	dt += "-"+s.substring(4, 7);
	dt += "-"+s.substring(30);
	System.out.println("Dt is: "+dt);	
	//java.sql.Date sd1 = new java.sql.Date(ud2.getTime());
	 
	acomplicants.setDateofavailablity(dt);   
    acomplicants.setComplication(complication);
    acomplicants.setRegdate(DateWrapper.parseDate(new java.util.Date()));
   acomplicants.setStatus("Pending");
   acomplicants.setTimings(timings);
    ComplicantDAO acomplicantdao=new ComplicantDAO();
    boolean flag=acomplicantdao.addComplicants(acomplicants);
    if(flag)
    {
    target="Complicants.jsp?status=Complicant   send Successfully";
    }
    RequestDispatcher rd=request.getRequestDispatcher(target);
    rd.forward(request,response);
    
    %> <br>
  </body>
</html>
