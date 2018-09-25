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
-->
</style><script type="text/javascript" src="scripts/project.js"></script>

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
          <td height="28"><jsp:include page="generaloptions.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
            <strong>LoginForm            </strong>
            <%if(request.getParameter("status")!=null)
          {   %><%=request.getParameter("status") %>
<%} %>
          <form action="ChangequestionAction.jsp" method="post" name="changequestion">
                    <table width="200" border="0" align="center">
                      <tr>
                        <td><table width="380" border="0" align="center">
                              <tr>
                                <td width="101">Login Name </td>
                                <td width="269">
                                  <input type="text" name="username">
                                </td>
                              </tr>
                              <tr>
                                <td >Password </td>
                                <td>
                                  <input type="password" name="password">
                                </td>
                              </tr>
                              <tr>
                                <td >Secret Question</td>
                                <td><select name="squest">
                                    <option value="1">What is your favorite pastime?</option>
                                    <option value="2">Who was your childhood hero?</option>
                                    <option value="3">What was the name of your first school?</option>
                                    <option value="4">Where did you meet your spouse?</option>
                                    <option value="5">What is your favorite sports team?</option>
                                    <option value="6">What is your father's middle name?</option>
                                    <option value="7">What was your high school mascot?</option>
                                    <option value="8">What make was your first car or bike?</option>
                                    <option value="9">What is your pet's name?</option>
                                </select></td>
                              </tr>
                              <tr >
                                <td colspan="2">
                                  <input type="checkbox" name="ch" value="1" onClick="check(changequestion)">
                                  Own Question </td>
                              </tr>
                              <tr>
                                <td>Own Question </td>
                                
                                <td>
                                  <input type="text" name="ownquest" disabled>
                                </td>
                              </tr>
                              <tr>
                                <td height="38" class="style23">Secret Answer </td>
                                <td><input name="sanswer" type="text"></td>
                              </tr>
                              <tr>
                                <td colspan="2"><div align="center">
                                  <input name="Input" type="submit" value="Change">
                                </div>
                                    <div align="center"></div></td>
                              </tr>
                            </table></td>
                            </tr>
                          
                        </table>
                    </form>  </td>
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