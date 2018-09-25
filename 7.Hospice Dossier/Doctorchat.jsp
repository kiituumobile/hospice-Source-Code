<%@ page session="true" import="sukhwinder.chat.ChatRoomList, sukhwinder.chat.ChatRoom" errorPage="error.jsp"%>
<%
	String nickname = (String)session.getAttribute("nickname");
	if (nickname != null && nickname.length() > 0)
	{
		ChatRoomList roomList = (ChatRoomList) application.getAttribute("chatroomlist");
		ChatRoom room = roomList.getRoomOfChatter(nickname);
		String roomname = room.getName();
%>

<html><head>

<title><TITLE> Chat Room- <%=nickname%> (<%=roomname%>) </TITLE></title>
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
.style4 {font-size: 14px; line-height: 18px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
.style5 {font-size: 14px; color: #0033CC; font-family: Arial, Helvetica, sans-serif;}
.style7 {color: #0000FF}
.style8 {color: #5B8E61}
body {
	background-color: #003399;
}
.style9 {font-weight: bold; color: #0000FF; line-height: normal; display: list-item; font-family: Arial, Helvetica, sans-serif;}
-->
</style>
</head>
<FRAMESET rows="80%,20%" cols="*">
<FRAME SRC="doctordisplayMessages.jsp#current" name="MessageWin">
<FRAME SRC="sendMessage.jsp" name="TypeWin">
</FRAMESET>
<NOFRAMES>
<H2>This chat rquires a browser with frames support</h2>
</NOFRAMES>

<body leftmargin="0" topmargin="0"> 
<table align="left" border="0" cellpadding="3" cellspacing="0" width="850">
  <tbody><tr>
    <td valign="top" width="58"><p align="center">&nbsp;</p>
      <p align="center">&nbsp;</p>      
      <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p></td>
    <td width="850"><table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="716" width="850">
      <tbody>
        <tr bgcolor="#003399">
          <td width="903" height="78">
            <table border="0" cellpadding="0" cellspacing="0" height="12" width="530">
              <tbody>
                <tr>
                  <td align="middle" bgcolor="white" height="107" valign="top" width="724">
                    <table id="AutoNumber8" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" height="112" width="100%">
                      <tbody><tr>
                        <td height="110"><div align="center"><img src="images/health.JPG" border="0" height="194" width="850"></div></td>
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
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome  Patient  <%=(String)session.getAttribute("user")%>
<%
}
else
{
	response.sendRedirect("Doctorlogin.jsp");
}
%>
</td>
          </tr>
       
      </tbody>
    </table>    </td>
    </tr>
</tbody></table>
</body></html>