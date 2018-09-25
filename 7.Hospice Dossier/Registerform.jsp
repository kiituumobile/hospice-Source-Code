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
.style6 {color: #000000}
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
          <td height="28"><jsp:include page="generaloptions.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
                  <div align="center"><strong>Register Form</strong>                               </div>
                  <ol>
                    <li>
                      <form action="RegisterAction.jsp" method="post" name="register">
                        
                        <table border="0" align="center">
                          <% if(request.getParameter("status")!=null)
{
out.println(request.getParameter("status"));
}
%>
                          <tr>
                            <td bgcolor="#E6E2E9" class="style3 tiny"><span class="style11 style6"><strong>First Name </strong></span></td>
                <td><input type="text" name="fname" class="textfield"/>    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Last Name </strong></span></td>
                <td><input type="text" name="lname" class="textfield"/>    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Birth Date </strong></span></td>
                <td><input type="text" name="bdate" readonly/>
                  <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9">
                            <span class="style11 style6"><strong>City</strong></span></td>
                <td><select name="city">
                  <option>Select City</option>
                  <option>Hyderabad</option>
                  <option>Mumbai</option>
                  </select>    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>State</strong></span></td>
                <td><select name="state">
                  <option>Select State</option>
                  <option>Andhra pradesh</option>
                  <option>Maharashtra</option>
                  </select>    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Country</strong></span></td>
                <td><select name="country">
                <option>Select Country</option>
                  <option>India</option>
                  </select>    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9" class="style11"><span class="style6"><strong>Pincode</strong></span></td>
                <td><input type="text" name="pincode" class="textfield"/></td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9" class="style11"><span class="style6"><strong>Contact No</strong></span></td>
                <td><input type="text" name="phoneno" class="textfield"/></td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9" class="style11"><span class="style6"><strong>Email</strong></span></td>
                <td><input type="text" name="email" class="textfield"/></td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Login Name</strong></span></td>
                <td><input type="text" name="loginname" />    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Password</strong></span></td>
                <td><input name="password" type="password" id="password" onkeyup="testPassword(document.forms.register.password.value);" />    </td>
              </tr><tr><td></td><td>
          <a id="Words">Strength:</a></td>
      <td><table cellpadding=0 cellspacing=0><tr><td height=15  bgcolor=#dddddd></td></tr></table></td>

 
</tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong> Secret Question </strong></span></td>
                <td><select name="squest">
                  <option value="1">What is your favorite pastime?</option>
                  <option value="2">Who your childhood hero?</option>
                  <option value="3">What is the name of your first school?</option>
                  <option value="4">Where did you meet your spouse?</option>
                  <option value="5">What is your favorite sports team?</option>
                  <option value="6">What is your father's middle name?</option>
                  <option value="7">What was your high school mascot?</option>
                  <option value="8">What make was your first car or bike?</option>
                  <option value="9">What is your pet's name?</option>
                  </select></td>
              </tr>
                          <tr bgcolor="#E6E2E9">
                            <td colspan="2"><span class="style11 style6"><strong>
                            <input type="checkbox" name="ch" value="1" onClick="check(register)" />
                            Own Question </strong></span></td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Own Question</strong></span></td>
                <td><input type="text" name="ownquest" disabled="disabled" />    </td>
              </tr>
                          <tr>
                            <td bgcolor="#E6E2E9"><span class="style11 style6"><strong>Secret Answer</strong></span></td>
                <td><input name="sanswer" type="text" /></td>
              </tr>
                          <tr bgcolor="#E6E2E9">
                            <td colspan="2"><div align="center" class="style11 style6"><strong>
                              <input name="Input" type="submit" value="Register" onclick="pinno" />
                            </strong></div></td>
              </tr>
                        </table>
                      </form>  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("register");
  
 
  frmvalidator.addValidation("fname","req","Please enter your First Name");
  frmvalidator.addValidation("fname","maxlen=20",	"Max length for FirstName is 20");
  frmvalidator.addValidation("fname","alpha"," First Name Alphabetic chars only");
  
  frmvalidator.addValidation("lname","req","Please enter your Last Name");
  frmvalidator.addValidation("lname","maxlen=20","Max length is 20");
  frmvalidator.addValidation("lname","alpha"," Last Name Alphabetic chars only");
  
  frmvalidator.addValidation("bdate","req","Please enter your DOB"); 
  
   frmvalidator.addValidation("city","dontselect=0");
   frmvalidator.addValidation("state","dontselect=0");
  frmvalidator.addValidation("country","dontselect=0");
   
   frmvalidator.addValidation("pin","req","Please enter your pin Number");
    frmvalidator.addValidation("fax","age");
     frmvalidator.addValidation("phoneno","req");
  
  frmvalidator.addValidation("phoneno","maxlen=50");
  frmvalidator.addValidation("phoneno","numeric");
 frmvalidator.addValidation("phoneno","Phone");
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
 
   frmvalidator.addValidation("loginname","req","Please enter Login Name");
   
   frmvalidator.addValidation("password","req","Please enter Password");
     frmvalidator.addValidation("secrete","req","Please enter your Answer");
   frmvalidator.addValidation("squest","dontselect=0");
     
 </script>
                      
                    </li>
              </ol></td>
      <td background="images/dots_ver.gif" bgcolor="#ffffff" valign="top" width="1"><img src="images/dots_ver.gif" height="6" width="1"></td>
      <td bgcolor="#E8E8C5" valign="top" width="209">&nbsp;</td>
      <td background="images/dots_ver.gif" bgcolor="#ffffff" valign="top" width="1"><img src="images/dots_ver.gif" height="6" width="1"></td>
      <td bgcolor="#e8e8c5" valign="top" width="95">&nbsp;</td>
    </tr>
  </tbody>
</table>
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
    </table>   

</body></html>