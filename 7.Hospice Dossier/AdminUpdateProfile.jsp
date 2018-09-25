
 <%@page import="com.dts.core.util.*,java.util.*" %>
<%@page import="com.dts.dae.model.*,com.dts.dae.dao.*"%>


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
.style12 {
	color: #663300;
	font-weight: bold;
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
          <td height="28"><jsp:include page="Admin.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome    <%=(String)session.getAttribute("user")%>
            <%if(request.getParameter("status")!=null)
  { %>
  <%=request.getParameter("status") %>
  <%} %>
 <form action="AdminProcessUpdateProfile.jsp" method="post" name="register" onSubmit="return validate()">
   <strong>Update Profile   </strong>
   <table border="0" align="center">
<% if(request.getParameter("status")!=null)
{
out.println(request.getParameter("status"));
}%>
<%
Profile aprofile=(Profile)application.getAttribute("loginuser");

   String firstname=aprofile.getFirstName();
        String lastname=aprofile.getLastName();
        String dob=DateWrapper.parseDate(aprofile.getBirthDate1());
        String city=aprofile.getCity();
        String state=aprofile.getState();
        String country=aprofile.getCountry();
    //String phoneno=aprofile.getPhoneNo();
%>







  <tr>
    <td bgcolor="#E6E2E9" class="style3 tiny"><span class="style12">First Name </span></td>
    <td><input type="text" name="fname" class="textfield" value="<%=firstname%>"/>    </td>
  </tr>
  <tr>
    <td bgcolor="#E6E2E9"><span class="style12"><strong>Last Name </strong></span></td>
    <td><input type="text" name="lname" class="textfield" value="<%=lastname%>"/>    </td>
  </tr>
  <tr>
    <td bgcolor="#E6E2E9"><span class="style12"><strong>Birth Date </strong></span></td>
    <td><input type="text" name="bdate" value="<%=dob%>"/>
      <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
  </tr>
  <tr>
    <td bgcolor="#E6E2E9"><span class="style12"><strong>City</strong></span></td>
    <td><select name="city">
      <option value="<%=city%>"><%=city%></option>
      
      <option>Hyderabad</option>
      <option>Mumbai</option>
    </select>    </td>
  </tr>
  <tr>
    <td bgcolor="#E6E2E9"><span class="style12"><strong>State</strong></span></td>
    <td><select name="state">
       <option value="<%=state%>"><%=state%></option>
      <option>Andhra pradesh</option>
      <option>Maharashtra</option>
    </select>    </td>
  </tr>
  <tr>
    <td bgcolor="#E6E2E9"><span class="style12"><strong>Country</strong></span></td>
    <td><select name="country">
      <option>India</option>
    </select>    </td>
  </tr>
  <tr bgcolor="#E6E2E9">
    <td colspan="2"><div align="center" class="style12"><strong>
      <input name="Input" type="submit" value="update" />
    </strong></div></td>
  </tr>
</table>
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