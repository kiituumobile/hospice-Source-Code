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
body,td,th {
	color: #663300;
}
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
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10"></p>
            <noscript>
            </noscript>
            <p>
             <%if(request.getParameter("status")!=null)
          {   %><%=request.getParameter("status") %>
<%} %>
                  <%String loginname=(String)session.getAttribute("user"); 
System.out.println(loginname);
try{
PatientDAO apatientdao=new PatientDAO();
CoreHash acorehash=apatientdao.viewPatientDetails(loginname);
Enumeration aenumeration=acorehash.keys();
if(!(acorehash.isEmpty()))
{
%><%while(aenumeration.hasMoreElements())
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

            
            
            Welcome    <%=(String)session.getAttribute("user")%></p>
            <p><strong>Update Details </strong>
            <form action="ProcessPatientDetails.jsp" method="post">
              <p>&nbsp;</p>
              <table width="200" align="center">
                <tr>
                  <td><strong>LoginName</strong></td>
                  <td><label for="textfield"></label>
                    <input type="text" name="loginname" id="loginname" value="<%=(String)session.getAttribute("user")%>"></td>
                </tr>
                <tr>
                  <td><strong>Age</strong></td>
                  <td><label for="label"></label>
                    <input type="text" name="age" id="label" value="<%=age%>"></td>
                </tr>
                <tr>
                  <td><strong>Height</strong></td>
                  <td><label for="label2"></label>
                    <input type="text" name="height" id="label2" value="<%=height%>"></td>
                </tr>
                <tr>
                  <td><strong>Weight</strong></td>
                  <td><label for="label3"></label>
                    <input type="text" name="weight" id="label3" value="<%=weight%>"></td>
                </tr>
                <tr>
                  <td><strong>Bloodgroup</strong></td>
                  <td><label for="label6"></label>
                    <input type="text" name="bggroup" id="label6" value="<%=bloodgroup%>"></td>
                </tr>
                <tr>
                  <td><strong>BP</strong></td>
                  <td><label for="label4"></label>
                    <label for="bp"></label>
                    <select name="bp" id="select">
                      <option value="<%=bp%>"><%=bp%></option>
                      
                      <option value="Normal">Normal</option>
                      <option value="Low">Low</option>
                      <option value="Heigh">Heigh</option>
                    </select>                    </td>
                </tr>
                <tr>
                  <td><strong>Sugar</strong></td>
                  <td><select name="sugar" id="select2">
                    <option value="<%=sugar%>"><%=sugar%></option>
                   
                    <option value="Normal">Normal</option>
                    <option value="Low">Low</option>
                    <option value="Heigh">Heigh</option>
                  </select></td>
                </tr>
                 </table> 
              <%} %> <%}else{
 %><%} 
}catch(Exception e)
{
}%>
              <p>
                <label for="Submit"></label>
              </p>
              <p align="center">
                <input type="submit" name="update" value="update" id="Submit">
              </p>
            </form> 
            <p>&nbsp;            </p></td>
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