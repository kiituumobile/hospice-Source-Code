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
-->
</style>
 <script type="text/javascript" src="scripts/project.js"></script>
<script type="text/javascript" src="scripts/general.js"> </script>
   <script type="text/javascript" src="scripts/ts_picker.js"> </script>
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
              <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">              </p>
              <noscript>
                </noscript>
              <p align="left"><strong>              Welcome  Patient  <%=(String)session.getAttribute("user")%>       
              
              <%if(request.getParameter("status")!=null)
              {
              %>
              <%=request.getParameter("status")%>
              <%} %>
                     </strong></p>
              <p><strong>Previous Reports</strong></p>
            </div>
            <form name="register" method="post" action="ProcessReports.jsp"  onsubmit="return validateFields()">
            <table width="264" align="center">
  <tr>
    <td width="91"><strong>PatientName</strong></td>
    <td width="161"><label for="textfield"></label>
      <input type="text" name="patientname" id="patientname" value="<%=(String)session.getAttribute("user")%>"></td>
  </tr>
  <tr>
    <td><strong>DoctorName</strong></td>
    <td><label for="label"></label>
      <input type="text" name="doctorname" id="label"></td>
  </tr>
  <tr>
    <td><strong>Location</strong></td>
    <td><label for="label2"></label>
      <input type="text" name="location" id="label2"></td>
  </tr>
  <tr>
    <td><strong>Specialization</strong></td>
    <td><label for="label3"></label>
      <input type="text" name="specilization" id="label3"></td>
  </tr>
  <tr>
    <td><strong>Bp</strong></td>
    <td><label for="label4"></label>
      <input type="text" name="bp" id="label4"></td>
  </tr>
  <tr>
    <td><strong>Sugar</strong></td>
    <td><label for="label5"></label>
      <input type="text" name="sugar" id="label5"></td>
  </tr>
  <tr>
    <td><strong>Complication</strong></td>
    <td><label for="textarea"></label>
      <textarea name="complication" id="complication"></textarea></td>
  </tr>
  <tr>
    <td><strong>Prescription</strong></td>
    <td><label for="label6"></label>
      <textarea name="prescription" id="label6"></textarea></td>
  </tr>
  <tr>
    <td><strong>LastRecord</strong></td>
    <td><label for="label7"></label>
      <input type="text" name="lastrecord" id="label7"><a href="javascript:show_calendar('document.register.lastrecord', document.register.lastrecord.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td>
  </tr>
</table>

              <div align="center">
                <label for="Submit"></label>
                <input type="submit" name="Submit" value="Register" id="Submit">
              </div>
            </form>
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