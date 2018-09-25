<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile,java.util.*"%> 

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'ProcessDoctor.jsp' starting page</title>
    
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
 
 <%
 String target="ViewDoctors.jsp?status=Doctor is Not Deleted";
 String loginname=request.getParameter("i1");
 DoctorDAO adoctordao=new DoctorDAO();
 boolean flag=adoctordao.deleteDoctors(loginname);
  if(flag)
  {
  target="ViewDoctors.jsp?status=Doctor is Deleted";
  }
  RequestDispatcher rd=request.getRequestDispatcher(target);
 rd.forward(request,response);
  %>
  </body>
</html>
