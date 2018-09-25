<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.dae.model.Profile,com.dts.dae.dao.SecurityDAO,com.dts.core.util.LoggerManager" %>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RecoverPasswordAction.jsp' starting page</title>
    
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
  	String target = "Recoverpasswordfprm.jsp?status=Entries not Matched... Try Again";;
      try{
          Profile rb=new Profile();
          String loginid=request.getParameter("username");
          String sanswer=request.getParameter("sanswer");
          rb.setLoginID(loginid);
          rb.setSecretAnswer(sanswer);
          int squestid=0;
          String password="";
           if(request.getParameter("ch")!=null)
          {
              rb.setSecretQuestionID(squestid);
              rb.setOwnSecretQuestion(request.getParameter("ownquest"));
              password=new SecurityDAO().recoverPasswordByOWNQuestion(rb);
          }
          else
          {
              squestid=Integer.parseInt(request.getParameter("squest"));
              rb.setSecretQuestionID(squestid);
              rb.setOwnSecretQuestion("Not Mentioned");
              password=new SecurityDAO().recoverPasswordByExistQuestion(rb);
          }
          if(password.equals("") || password==null)
              target="Recoverpassword.jsp?status=Entries not Matched... Try Again";
          else
             target="LoginForm.jsp?status=Password is "+password;
        }
        catch(Exception e)
        {
           LoggerManager.writeLogSevere(e);
        }
        RequestDispatcher rd = request.getRequestDispatcher(target);
        rd.forward(request,response);
  %>
  </body>
</html>
