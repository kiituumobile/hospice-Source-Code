<%@page import="com.dts.project.model.*,com.dts.project.dao.*,java.util.*,com.dts.core.util.*" %>
<%@ page import="com.dts.dae.model.*"%>

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

</script><script type="text/javascript" src="scripts/project.js"></script>
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
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style> <script type="text/javascript" src="scripts/general.js"> </script>
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
          <td height="28"><jsp:include page="Doctoroptions.html"/></td>
        </tr>
        <tr>
          <td height="435" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <p><img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
            </p>
            <noscript>
            </noscript>
            <p>Welcome  Doctor  <%=(String)session.getAttribute("user")%></p>
            <p>&nbsp;</p>
            <%if(request.getParameter("status")!=null)
            { %>
            <%=request.getParameter("status")%>
            <%} %>
            
            <%String doctorname=(String)session.getAttribute("user");
            
            DoctorDAO adoctordao=new DoctorDAO();
             CoreHash acorehash=adoctordao.viewRegDoctors(doctorname);
            Enumeration aenumeration=acorehash.keys();
          String doctorname1=null;
          String specilization=null;
          String qualificattion=null;
          String hospitalname=null;
            while(aenumeration.hasMoreElements())
            {
            Integer i1=(Integer)aenumeration.nextElement();
            Profile aprofile=(Profile)acorehash.get(i1);
             doctorname1=aprofile.getLoginID();
             specilization=aprofile.getSpecilization();
	       qualificattion=aprofile.getQualification();
             hospitalname=aprofile.getHospitalname();
             %><%} %>  
            
            <form name="register" method="post" action="ProcessUpdateDoctor.jsp" onsubmit="return validateFields()">
            <table width="200" align="center">
              <tr>
                <td><strong>DoctorName</strong></td>
                <td>
                  <label for="textfield"></label>
                  <input type="text" name="doctor" id="doctor" value="<%=doctorname%>">                </td>
              </tr>
              <tr>
                <td><strong>Specilization</strong></td>
                <td><label for="label"></label>
                  <input type="text" name="specilization" id="label" value="<%= specilization%>"></td>
              </tr>
              <tr>
                <td><strong>Qualification</strong></td>
                <td><label for="label2"></label>
                  <input type="text" name="qualification" id="label2" value="<%= qualificattion%>"></td>
              </tr>
              <tr>
                <td><strong>AvailableDate</strong></td>
                <td><label for="label2"></label>
                  <input type="text" name="adate" id="label2" readonly><a href="javascript:show_calendar('document.register.adate', document.register.adate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a></td>
              </tr>
              <tr>
                <td><strong>HospitalName</strong></td>
                <td><label for="label3"></label>
                  <input type="text" name="hospitalname" id="label3" value="<%=hospitalname %>"></td>
              </tr>
            </table>    
            <label for="Submit"></label>
            <div align="center">
              <input type="submit" name="update" value="Submit" id="update">
            </div>
            </form>       <p>&nbsp;            </p></td>
          </tr>
        <tr>
          <td align="middle" height="1">&nbsp;</td>
        </tr>
        <tr bgcolor="#0033ff">
          <td align="middle" height="3">pa</td>
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