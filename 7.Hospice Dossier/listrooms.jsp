<%@ page session="true" errorPage="error.jsp" import="java.util.Set,java.util.Iterator,java.util.Map,sukhwinder.chat.*"%>
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
<SCRIPT language="JavaScript">
	 <!--
	 if(window.top != window.self)
	 {
		 window.top.location = window.location;
	 }
	 //-->
</SCRIPT>

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
</head><body leftmargin="0" topmargin="0"> 
<%


String nickname = (String)session.getAttribute("nickname");
if (nickname == null || nickname == "")
{
	response.sendRedirect("login.jsp");
	//System.out.println("Redirecting");
}
else
{
	String roomname = request.getParameter("rn");	
	String descr = request.getParameter("sd");
	boolean see = false;
	if (descr != null && descr.equals("y"))
	{
		see = true;
	}
%>

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
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome    <%=(String)session.getAttribute("user")%>
            
            <TABLE width="80%" align="center">	
	<!--<tr>
		<td class="normal">Welcome <span class="chattername"><%=nickname%></span></td>
	</tr>	
	-->
	<TR>
		<TD width="100%">Select the room you want to enter or click view description to view description
			 about the room.
		</TD>
	</TR>
</TABLE>
<BR>
	<%
				
		
		try
		{
			ChatRoomList roomlist = (ChatRoomList)application.getAttribute("chatroomlist");
			ChatRoom[] chatrooms = roomlist.getRoomListArray();
			if(roomname == null)
			{
				roomname = roomlist.getRoomOfChatter(nickname).getName();
			}
			roomname = roomname.trim();

	%>
<DIV align="center">
<CENTER>
	<FORM name="chatrooms" action="<%=request.getContextPath()%>/start.jsp" method="post">
	<TABLE width="80%" border="1" cellspacing="1" cellpadding="1" align="center">
	<TR>
	<TD colspan="2" class="pagetitle">Room List</TD>
	</TR>
	<%
			for (int i = 0; i < chatrooms.length; i++)
			{
				if (chatrooms[i].getName().equalsIgnoreCase("StartUp"))
					continue;
	%>
		<TR>
		<TD width="50%">
		<INPUT type=radio name="rn" value="<%=chatrooms[i].getName()%>"
		<%if (chatrooms[i].getName().equals(roomname))
			out.write("checked");%>><%=chatrooms[i].getName()%>
		</TD>
	<%
				if (see == true && chatrooms[i].getName().equals(roomname))
				{
	%>	
			<TD width="50%"><%=chatrooms[i].getDescription()%></TD>
	<%
				}
				else
				{
	%>
			<TD width="50%"><A href="<%=request.getContextPath()%>/listrooms.jsp?rn=<%=chatrooms[i].getName()%>&sd=y">View Description</A></TD>
	<%
				}
	%>
		</TR>
	<%
			}
		}
		catch (Exception e)
		{
			System.out.println("Unable to get handle to Servlet Context: " + e.getMessage());
			e.printStackTrace();
		}
%>
<TR>
	<TD>
	<TD><INPUT type="Submit" value="Start"></TD>
</TR>
</TABLE>
</FORM>
</CENTER>
</DIV>
<%
	}
%>
            
            
            
            
            
            
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