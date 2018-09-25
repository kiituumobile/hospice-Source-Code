<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessPatientDetails.jsp' starting page</title>
    
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
   try{
if(request.getParameter("Register")!=null)
{

   String target="PatientDetails.jsp?status=Details not send";
   String loginname=request.getParameter("loginname");
   String age=request.getParameter("age");
   String height=request.getParameter("height");
   String weight=request.getParameter("weight");
   String bggroup=request.getParameter("bggroup");
   String bp=request.getParameter("bp");
   String sugar=request.getParameter("sugar");
   String regdate=request.getParameter("regdate");
   Patient apatient=new Patient();
   apatient.setLoginname(loginname);
   apatient.setAge(age);
    apatient.setHeight(height);
     apatient.setWeight(weight);
      apatient.setBloodgroup(bggroup);
 apatient.setBp(bp);
  apatient.setSugar(sugar);
   apatient.setRegdate(DateWrapper.parseDate(regdate));
   PatientDAO apatientdao=new PatientDAO();
  boolean flag=apatientdao.addPatient(apatient); 
   if(flag)
   {
   target="PatientDetails.jsp?status=Details  send successfully";
   }
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
  }
  
if(request.getParameter("update")!=null)
{
  String target="ViewPatient.jsp?status=Record is not Updated";
   String loginname=request.getParameter("loginname");
   String age=request.getParameter("age");
   String height=request.getParameter("height");
   String weight=request.getParameter("weight");
   String bggroup=request.getParameter("bggroup");
   String bp=request.getParameter("bp");
   String sugar=request.getParameter("sugar");
   
   Patient apatient=new Patient();
   apatient.setLoginname(loginname);
   apatient.setAge(age);
    apatient.setHeight(height);
     apatient.setWeight(weight);
      apatient.setBloodgroup(bggroup);
 apatient.setBp(bp);
  apatient.setSugar(sugar);
  // apatient.setRegdate(DateWrapper.parseDate(regdate));
   PatientDAO apatientdao=new PatientDAO();

  boolean flag=apatientdao.updatePatient(apatient); 
System.out.println(flag);
   if(flag)
   {
   target="ViewPatient.jsp?status=Record Updated successfully";
   }
   RequestDispatcher rd=request.getRequestDispatcher(target);
   rd.forward(request,response);
  }
  
  
  
  
  
  
   } catch(Exception e)
   {
   e.printStackTrace();
   }
    %>
   
    <br>
  </body>
</html>
