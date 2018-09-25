<%@ page language="java" import="java.util.*,java.sql.*" extends="com.dts.core.model.AbstractDataObject" pageEncoding="ISO-8859-1"%>
<jsp:useBean id="ab" class="com.dts.core.dao.AbstractDataAccessObject"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AUDVL.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script language="javascript" src="scripts/general.js"></script>
</head>
  
  <body>
  <form name="form1" method="post" action="">
    <table width="786" border="1">
      <tr>
        <td width="20"><div align="center">
          <label>
          <input type="checkbox" name="ch" id="checkbox" onClick="SetChecked('ch')">
          </label>
        </div></td>
        <td width="83"><div align="center"><strong>Sno</strong></div></td>
        <td width="83"><div align="center"><strong>Name</strong></div></td>
        <td width="138"><div align="center"><strong>Age</strong></div></td>
        <td width="138"><div align="center"><strong>Address</strong></div></td>
      </tr>
          <%
          try{
            Connection con = ab.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from test");
            while(rs.next())
            {
           %>
      <tr>
        <td><input name="ch" type="checkbox" id="checkbox2" value="1"></td>
        <td><div align="center">rs.getString(1)</div></td>
        <td><div align="center">rs.getString(2)</div></td>
        <td><div align="center">rs.getString(3)</div></td>
        <td><div align="center">rs.getString(4)</div></td>
      </tr>
      <%} 
      }
      catch(Exception e){}%>

      <tr>
        <td colspan="5"><div align="center">
         
          <input type="submit" name="button" id="button" value="Add New" onclick="javascript:location.href='addnew.jsp'">
          &nbsp;
          <input type="submit" name="button2" id="button2" value="Delete">
          
        </div></td>
      </tr>
    </table>
  </form>
  <br>
  </body>
</html>
