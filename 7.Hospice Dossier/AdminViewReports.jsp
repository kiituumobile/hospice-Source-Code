
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>

<html><head>

<title>Telemedicine</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//--><meta name="keywords" content="telemedicine, telehealth, telemedicine directory, telemedicine providers, telemedicine recruiting, telemedicine jobs, telemedicine telemedicine careers, telemedicine doctors, clinics, healthcare, international, national, medical peripherals, consulting, medicine, video, audio, network, computer, internet">

</script>
<meta name="description" content="Telemedicine.com is your Telemedicine resource. Visit the Telemedicine Discussion Forum, Worldwide Provider Directory, FAQs, Jobs, Grant Opportunities, etc." telemed.css="" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {font-weight: bold; line-height: 35px; color: #FFFFFF; font-style: normal; font-size: 12px;}
-->
</style>
<link href="images/telemed.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
body {
	background-color: #003399;
}
.style12 {color: #FFFFFF; font-weight: bold; }
.style13 {color: #663300}
-->
</style>
</head><body leftmargin="0" topmargin="0"> 
<table align="left" border="0" cellpadding="3" cellspacing="0" width="952">
  <tbody><tr>
    <td valign="top" width="58"><p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>      
      <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p></td>
    <td width="899"><table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="716" width="903">
      <tbody>
        <tr bgcolor="#003399">
          <td width="903" height="78">
            <table border="0" cellpadding="0" cellspacing="0" height="12" width="530">
              <tbody>
                <tr>
                  <td align="middle" bgcolor="white" height="107" valign="top" width="724">
                    <table id="AutoNumber8" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" height="112" width="100%">
                      <tbody><tr>
                        <td height="110"><div align="center"><img src="images/health.JPG" border="0" height="194" width="909"></div></td>
                      </tr>
                  </tbody></table></td>
                </tr>
                <tr bgcolor="#000000">
                  <td bgcolor="#0000ff" height="2" width="724"></td>
                </tr>
              </tbody>
          </table></td>
        </tr>
        <tr>
          <td height="28"><jsp:include page="Admin.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome  Admin  <%=(String)session.getAttribute("user")%>
 <%if(request.getParameter("status")!=null)
              {
              %>
              <%=request.getParameter("status")%>
              <%} %>
<%
try{
String loginname=request.getParameter("loginname");

System.out.println(loginname);
ReportDAO areportdao=new ReportDAO();
CoreHash acorehash=areportdao.viewPatientReports(loginname);
%>

<table border="1" bordercolor="#663300"><tr bgcolor="#400A6C">

<td width="86"><div align="center"><span class="style12">DoctorName</span></div></td>
<td width="58"><div align="center"><span class="style12">Location</span></div></td>
<td width="85"><div align="center"><span class="style12">Specilization</span></div></td>
<td width="63"><div align="center"><span class="style12">Bp</span></div></td>
<td width="113"><div align="center"><span class="style12">Sugar</span></div></td>
<td width="115"><div align="center"><span class="style12">Complication</span></div></td>
<td width="113"><div align="center"><span class="style12">Prescription</span></div></td>
<td width="168"><div align="center"><span class="style12">LastRecord</span></div></td>
</tr>

<%if(!(acorehash.isEmpty()))
{
Enumeration aenumeration=acorehash.keys();
while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Reports areports=(Reports)acorehash.get(i1);
String loginname1=areports.getLoginname();
String doctorname=areports.getDoctorname();
System.out.println(doctorname);

String location =areports.getLocation();

String specilization=areports.getSpeciliazation();
String bp=areports.getBp();
String sugar=areports.getSugar();
String complication=areports.getComplication();
String prescrption=areports.getPrescription();
String lastrecord=areports.getDateoflastrecord();

 
 %>
<tr>

<td><div align="center" class="style13"><%=doctorname%></div></td>
<td><div align="center" class="style13"><%=location%></div></td>
<td><div align="center" class="style13"><%=specilization %></div></td>
<td><div align="center" class="style13"><%=bp%></div></td>
<td><div align="center" class="style13"><%=sugar%></div></td>
<td><div align="center" class="style13"><%=complication%></div></td>
<td><div align="center" class="style13"><%=prescrption%></div></td>
<td><div align="center" class="style13"><%=lastrecord%></div></td>
</tr>
      <%} }else
      {%>
      No Repots Available
      <%} 
      %></table><%}catch(Exception e)
      {
      } %>
   
    
      </td>
          </tr>
        <tr>
          <td align="middle" height="1"></td>
        </tr>
        <tr bgcolor="#0033ff">
          <td align="middle" height="3"></td>
        </tr>
        <tr bgcolor="#333333">
          <td align="middle" height="1">
            <p class="style3" align="center">&nbsp;</p></td>
        </tr>
        <tr bgcolor="#333333">
          <td align="middle" height="1">&nbsp;</td>
        </tr>
      </tbody>
    </table>    </td>
    </tr>
</tbody></table>
</body></html>