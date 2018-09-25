<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.dts.project.model.*,com.dts.project.dao.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessTeleCenters.jsp' starting page</title>
    
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
  
   if(request.getParameter("Submit")!=null)
  { String target="AdminTeleCenters.jsp?status=Telecenters is not added";
   try{
   String country=request.getParameter("country");
   String state=request.getParameter("state");
   String city=request.getParameter("city");
   String cname=request.getParameter("cperson");
   String cno=request.getParameter("cno");
   TeleCenters atelecenters=new TeleCenters();
    atelecenters.setCountry(country);
 atelecenters.setState(state);
 atelecenters.setCity(city);
 atelecenters.setContactperson(cname);
 atelecenters.setContactno(cno);
 TeleDAO ateldao=new TeleDAO();
 boolean flag=ateldao.addTeleCenters(atelecenters);
 if(flag)
 {
 
 target="AdminTeleCenters.jsp?status=Telecenters is  added";
   }
   }
   catch(Exception e)
   {
   } 
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
   }else{%>
   <% String target1="ViewTelecenters.jsp?status=Telecenters Deletion is failed";
   try{
 
   if(request.getParameter("deleteTelecenters")!=null)
   {
   String i1=request.getParameter("c1");
   TeleDAO ateldao=new TeleDAO();
 boolean flag=ateldao.deleteTelecenters(i1);
 if(flag)
 { 
 target1="ViewTelecenters.jsp?status=Telecenters is Deleted";
   }
   }
   }
   catch(Exception e){
   }   
   RequestDispatcher rd1=request.getRequestDispatcher(target1);
   rd1.forward(request,response);   
   }%>
  </body>
</html>
