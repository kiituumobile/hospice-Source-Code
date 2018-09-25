<html><head>

<script language="JavaScript" src="scripts/gen_validatorv31.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
<script language="JavaScript1.1" src="scripts/pass.js">


</script> <script type="text/javascript" src="scripts/image.js"> </script>
 <script type="text/javascript" src="scripts/general.js"> </script>
 <script type="text/javascript" src="scripts/adi.js"> </script>
 <script type="text/javascript" src="scripts/form_validation.js"> </script>

<script type="text/javascript" src="scripts/moveclock.js"></script>

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
body,td,th {
	color: #663300;
	font-family: Verdana, Arial, Helvetica, sans-serif;
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
    <td width="899"><table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="716" width="918">
      <tbody>
        <tr bgcolor="#003399">
          <td width="918" height="78">
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
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
            <noscript>
            </noscript>
            <p>Welcome    <%=(String)session.getAttribute("user")%></p>
            
                 <% if(request.getParameter("status")!=null)
{
out.println(request.getParameter("status"));
}
%>
                 <strong>Complicants                 </strong>
                 <p><form action="processComplicant.jsp" method="post"  name="register" onsubmit="return validateFields()">
                 <table width="200" align="center">
  <tr>
    <td><strong>LoginName</strong></td>
    <td><label for="textfield"></label>
      <input type="text" name="loginname" id="loginname" value="<%=(String)session.getAttribute("user")%>" readonly></td>
  </tr>
  <tr>
    <td><strong>Complication</strong></td>
    <td><label for="textarea"></label>
      <textarea name="complication" id="complication"></textarea></td>
  </tr>
  <tr>
    <td><strong>DateOfAvailablity</strong></td>
    <td><label for="textfield"></label>
      <input type="text" name="adate" id="adate"><a href="javascript:show_calendar('document.register.adate', document.register.adate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td>
  </tr>
  <tr>
    <td><strong>Timings</strong></td>
    <td><label for="textfield"></label>
      <input type="text" name="timings" id="timings"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><label for="Submit"></label>
      <input type="submit" name="Submit" value="Register" id="Submit"></td>
  </tr>
</table>
</form> <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("register");
  
 
  frmvalidator.addValidation("complication","req","Please enter Complication");
  
  frmvalidator.addValidation("adate","req","Please enter Avaiable Date");
  
  frmvalidator.addValidation("timings","req","Please enter Timings"); 
      
 </script>
 &nbsp;            </td>
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