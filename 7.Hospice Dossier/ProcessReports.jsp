<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.project.model.*,com.dts.project.dao.*"%>
<% try{
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessReports.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>&nbsp; 
  <%
  
  try{
  if(request.getParameter("Submit")!=null)
  {
  String target="Report.jsp?status=One Report is Not Send";
  String loginname=request.getParameter("patientname");
  String doctorname=request.getParameter("doctorname");
  String location=request.getParameter("location");
  String specilization=request.getParameter("specilization");
  String bp=request.getParameter("bp");
  String sugar=request.getParameter("sugar");
  String complication=request.getParameter("complication");
  String prescription=request.getParameter("prescription");
    String lastrecord=(request.getParameter("lastrecord")).trim();
  System.out.println("lastrecord"+lastrecord+"<<");
  
  
  Reports areports=new Reports();
  areports.setLoginname(loginname.trim());  
  areports.setDoctorname(doctorname);
  areports.setLocation(location);
  areports.setSpeciliazation(specilization);
  areports.setBp(bp);
  areports.setSugar(sugar);
  areports.setComplication(complication);
  areports.setPrescription(prescription);
  areports.setDateoflastrecord(lastrecord);
  ReportDAO areportdao=new ReportDAO();
  boolean flag=areportdao.addReports(areports);
   if(flag)
   {
  target="Report.jsp?status= Report is  Send";
   }
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
   }
   }catch(Exception e)
   {
   }
   %>
   <%
  
  try{
  if(request.getParameter("delete")!=null)
  {
  String target="ViewReports.jsp?status=One Report is Not Deleted";
  String lastrecord=request.getParameter("i2");
  
  
  ReportDAO areportdao=new ReportDAO();
  boolean flag=areportdao.deleteReports(lastrecord);
   if(flag)
   {
  target="ViewReports.jsp?status= Report is  Deleted";
   }
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
   }
   }catch(Exception e)
   {
   }
   %><%
  
  try{
  if(request.getParameter("UpdateRegister")!=null)
  {
  String target="Report.jsp?status=One Report is Not Updated ";
  String loginname=request.getParameter("patientname");
  String doctorname=request.getParameter("doctorname");
  String location=request.getParameter("location");
  String specilization=request.getParameter("specilization");
  String bp=request.getParameter("bp");
  String sugar=request.getParameter("sugar");
  String complication=request.getParameter("complication");
  String prescription=request.getParameter("prescription");
  String lastrecord=(request.getParameter("lastrecord")).trim();
  System.out.println("lastrecord"+lastrecord+"<<");
  
  
  Reports areports=new Reports();
  areports.setLoginname(loginname.trim());
  areports.setDoctorname(doctorname);
  areports.setLocation(location);
  areports.setSpeciliazation(specilization);
  areports.setBp(bp);
  areports.setSugar(sugar);
  areports.setComplication(complication);
  areports.setPrescription(prescription);
  areports.setDateoflastrecord(lastrecord);
  ReportDAO areportdao=new ReportDAO();
  boolean flag=areportdao.updateReports(areports);
   if(flag)
   {
  target="ViewReports.jsp?status= Report is  Updated";
   }
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
   }
   }catch(Exception e)
   {
   }
} 
catch(Exception e)
   {
	   System.out.println("Exception"+e.getMessage());
   }%>
  
  
    <br>
  </body>
</html>
