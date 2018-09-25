<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%@ page import="com.dts.project.model.*,com.dts.project.dao.*,com.dts.core.util.*" %>



<html><head>

<title>Telemedicine</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
<meta name="description" content="Telemedicine is your Telemedicine resource. Visit the Telemedicine Discussion Forum, Worldwide Provider Directory, FAQs, Jobs, Grant Opportunities, etc." telemed.css="" rel="stylesheet" type="text/css">
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
.style11 {color: #FFFFFF; font-weight: bold; }
body,td,th {
	color: #660000;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style16 {color: #663300; font-weight: bold; }
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
          <td height="28"><jsp:include page="useroptions.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <div align="center">
              <noscript>
                </noscript>            
              <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
              </p>
              <noscript>
                </noscript>
              <p>              Welcome    <%=(String)session.getAttribute("user")%>
                
                <%String loginname=(String)session.getAttribute("user"); 
System.out.println(loginname);
try{
PatientDAO apatientdao=new PatientDAO();
CoreHash acorehash=apatientdao.viewPatientDetails(loginname);
Enumeration aenumeration=acorehash.keys();
if(!(acorehash.isEmpty()))
{
%>
              </p>
              <p align="left"><strong> PatieantDetails </strong></p>
              <table width="834" border="1" bordercolor="#660000">
                <tr bgcolor="#490B7A"><td width="154"><div align="center" class="style11">LoginName</div></td>
      <td width="57"><div align="center" class="style11">Age</div></td>
      <td width="86"><div align="center" class="style11">Height</div></td>
      <td width="95"><div align="center" class="style11">Weight</div></td>
      <td width="114"><div align="center" class="style11">BloodGroup</div></td>
      <td width="94"><div align="center" class="style11">BP</div></td>
      <td width="78"><div align="center" class="style11">Sugar</div></td>
      <td width="120"><div align="center" class="style11">RegDate</div></td>
      </tr>
                <%
while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
Patient apatient=(Patient)acorehash.get(i1);
String patientname=apatient.getLoginname();
String age=apatient.getAge();
String height=apatient.getHeight();
String weight=apatient.getWeight();
String bloodgroup=apatient.getBloodgroup();
String bp=apatient.getBp();
String sugar=apatient.getSugar();
String regdate=DateWrapper.parseDate(apatient.getRegdate1());
%>
                <tr bgcolor="#877B7F"><td><div align="center" class="style16"><%out.println("<a href='UpdatePatientDetails.jsp?loginname="+patientname+"'>"+patientname+"</a>");%></div></td><td><div align="center" class="style16"><%=age%></div></td><td><div align="center" class="style16"><%=height%></div></td><td><div align="center" class="style16"><%=weight%></div></td><td><div align="center" class="style16"><%=bloodgroup%></div></td><td><div align="center" class="style16"><%=bp %></div></td><td><div align="center" class="style16"><%=sugar%></div></td><td><div align="center" class="style16"><%=regdate%></div></td></tr>
                <%} %>
              </table>
              <%}else{
 %>
              <strong>Your Details is not available</strong>
  <%} 
}catch(Exception e)
{
}%>
            </div></td>
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