<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile,com.dts.dae.dao.SecurityDAO"%> 
<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ChangequestionAction.jsp' starting page</title>
    
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
  	String target="Changequestion.jsp?status=Change Failed"; 
    try{
    		Profile rb=new Profile();
          String loginid=request.getParameter("username");
          String password=request.getParameter("password");
          int squestid=0;
          
           if(request.getParameter("ch")!=null)
          {
              rb.setSecretQuestionID(squestid);
              rb.setOwnSecretQuestion(request.getParameter("ownquest"));
          }
          else
          {
              squestid=Integer.parseInt(request.getParameter("squest"));
              rb.setSecretQuestionID(squestid);
              rb.setOwnSecretQuestion("Not Mentioned");
          }
          //String ownsquest=request.getParameter("ownquest");
          String sanswer=request.getParameter("sanswer");
          
          rb.setLoginID(loginid);
          rb.setPassword(password);
          rb.setSecretAnswer(sanswer);
          
          boolean flag=new SecurityDAO().changeQuestion(rb);
          
            
          
          if(flag) 
             target ="Changequestion.jsp?status=Change Success"; 
          else  
              target = "Changequestion.jsp?status=Change Failed"; 
        }catch(Exception e){}      
          RequestDispatcher rd = request.getRequestDispatcher(target);
          rd.forward(request,response);
  %>
  </body>
</html>
