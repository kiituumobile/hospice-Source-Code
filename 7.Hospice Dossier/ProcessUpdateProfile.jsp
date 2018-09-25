<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.dae.model.*,com.dts.dae.dao.*"%>
<%@ page import="com.dts.core.util.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessUpdateProfile.jsp' starting page</title>
    
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
  	    String target="ViewRegisterDetails.jsp?status=Record Updation is failed";
  	        Profile rb=new Profile();
  	        rb.setLoginID((String)session.getAttribute("user"));
  	        rb.setFirstName(request.getParameter("fname")); 
		        rb.setLastName(request.getParameter("lname")); 
		        rb.setBirthDate(request.getParameter("bdate")); 
		        //rb.setStreet(request.getParameter("street"));
		        rb.setCity(request.getParameter("city")); 
		        rb.setState(request.getParameter("state")); 
		        rb.setCountry(request.getParameter("country"));
		       // rb.setPhoneNo(request.getParameter("phoneno"));
		        
  ProfileDAO aprofiledao=new ProfileDAO();
  boolean flag=aprofiledao.modifyProfile(rb);
  System.out.println(flag);
  if(flag)
  {
  target="ViewRegisterDetails.jsp?status=Record Updation is Successful";
  
  }
  RequestDispatcher rd=request.getRequestDispatcher(target);
  rd.forward(request,response);

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   %>
    . <br>
  </body>
</html>
