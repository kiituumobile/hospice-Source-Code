<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile"%> 

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>
<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'RegisterAction.jsp' starting page</title>

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
		<br>
		<%
			String target="AdminRegisterform.jsp?status=Doctor Registration Failed"; 
				try{
				 Profile rb = new Profile(); 
		        rb.setFirstName(request.getParameter("fname")); 
		        rb.setLastName(request.getParameter("lname")); 
		        String bdate=request.getParameter("bdate");
		        System.out.println("---------"+bdate);
		        rb.setBirthDate(bdate); 
		        rb.setHno(request.getParameter("hno"));
		        rb.setStreet(request.getParameter("street"));
		        rb.setCity(request.getParameter("city")); 
		        rb.setState(request.getParameter("state")); 
		        rb.setCountry(request.getParameter("country"));
		        rb.setPincode(request.getParameter("pincode"));
		        rb.setPhoneNo(request.getParameter("phoneno"));
		        rb.setEmail(request.getParameter("email")); 
		        rb.setSpecilization(request.getParameter("specilization"));
		        rb.setQualification(request.getParameter("qualification"));
		        rb.setHospitalname(request.getParameter("hname"));
		        rb.setAvailiabledate(DateWrapper.parseDate(request.getParameter("bdate")));
		        rb.setStatus("1"); 
		        rb.setFirstLogin(0); 
		        rb.setLoginID(request.getParameter("loginname")); 
		        rb.setLoginType("Doctor"); 
		        rb.setPassword(request.getParameter("password")); 
		        int questid=0; 
		        if(request.getParameter("ch")!=null) 
		        { 
		            rb.setSecretQuestionID(questid); 
		            rb.setOwnSecretQuestion(request.getParameter("ownquest")); 
		        } 
		        else 
		        { 
		            questid=Integer.parseInt(request.getParameter("squest")); 
		            rb.setSecretQuestionID(questid); 
		            rb.setOwnSecretQuestion("Not Mentioned"); 
		        } 
		        rb.setSecretAnswer(request.getParameter("sanswer")); 
		        rb.setLocale(request.getLocale().toString()); 
		      System.out.println("-----------ddddddddddd-----------");
		        boolean flag=new DoctorDAO().addDoctors(rb);
		        
		        if(flag) 
		           target = "AdminRegisterform.jsp?status=Doctor Registration Success"; 
		        
		            }catch(Exception e){
		            System.out.println(e+"----------------------");
		            }
		        RequestDispatcher rd = request.getRequestDispatcher(target);
		        rd.forward(request,response);
		        
		%>
	</body>
</html>
