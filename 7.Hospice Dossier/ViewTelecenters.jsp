<%@ page import="com.dts.core.util.*,java.util.*,com.dts.project.model.*,com.dts.project.dao.*"%>


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
.style7 {color: #FFFFFF; font-weight: bold; }
.style8 {color: #663300}
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
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
            <form action="ProcessTeleCenters.jsp" method="post">
            <%TeleDAO ateledao=new TeleDAO();
            CoreHash acorehash=ateledao.viewTeleCenters();
             Enumeration aenumeration=acorehash.keys();
if(!(acorehash.isEmpty()))
{%>
<table width="846" border="1" bordercolor="#663300">
  <tr bgcolor="#420A6F">
  <td width="110"><div align="center"><span class="style7"><input type="radio" name="i1" /></span></div></td>
  <td width="110"><div align="center"><span class="style7">Country</span></div></td>
<td width="146"><div align="center"><span class="style7">State</span></div></td>
<td width="156"><div align="center"><span class="style7">City</span></div></td>
<td width="213"><div align="center"><span class="style7">ContactPerson</span></div></td>
<td width="197"><div align="center"><span class="style7">Contactno</span></div></td>
</tr>
<%while(aenumeration.hasMoreElements())
{
Integer i1=(Integer)aenumeration.nextElement();
TeleCenters atelecenters=(TeleCenters)acorehash.get(i1);
String country=atelecenters.getCountry();
String state=atelecenters.getState();
String city=atelecenters.getCity();
String contactperson=atelecenters.getContactperson();
String contactno=atelecenters.getContactno();
             %>
            <tr bgcolor="#918998">
            <td><div align="center"><strong><span class="style8"><input type="radio" name="c1" value="<%=contactperson%>"/></span></strong></div></td>
            <td><div align="center"><strong><span class="style8"><%=country%></span></strong></div></td><td><div align="center"><strong><span class="style8"><%=state%></span></strong></div></td><td><div align="center"><strong><span class="style8"><%=city%></span></strong></div></td><td><div align="center"><strong><span class="style8"><%=contactperson%></span></strong></div></td><td><div align="center"><strong><span class="style8"><%=contactno%></span></strong></div></td></tr>
            
            <%} %>
            </table><input type="submit" name="deleteTelecenters" value="delete"/>
            <%}else
            {%>
            TELEMEDICINE CENTERS IS NOT AVAILABLE
            <%} %>
            </form>
            
             
              <div align="center"></div>
                  <div align="justify"></div>
              </td>
          </tr>
        <tr>
          <td align="middle" height="1"></td>
        </tr>
        <tr bgcolor="#0033ff">
          <td align="middle" height="3">&nbsp;pa</td>
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