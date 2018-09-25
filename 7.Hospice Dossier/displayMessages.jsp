<%@ page isErrorPage="false" errorPage="error.jsp" import="java.util.Set,java.util.Iterator,java.util.Map,java.util.Date,java.text.DateFormat,sukhwinder.chat.*"%>

<html><head>
<%
	String roonName = null;
	String nickname = (String)session.getAttribute("nickname");
	ChatRoomList roomList = null;
	ChatRoom chatRoom = null;
	Chatter chatter = null;
	Message[] messages = null;

	if (nickname != null)
	{
		try
		{
			roomList = (ChatRoomList) application.getAttribute("chatroomlist");
			roonName = roomList.getRoomOfChatter(nickname).getName();
			if (roonName != null && roonName != "")
			{
				chatRoom = roomList.getRoom(roonName);
				chatter = chatRoom.getChatter(nickname);
				if (chatRoom != null)
				{
					long enteredAt = chatter.getEnteredInRoomAt();
					if (enteredAt != -1)
					{
						messages = chatRoom.getMessages(enteredAt);					
					}
					else
					{
						messages = chatRoom.getMessages(chatter.getLoginTime());
					}

				}
				else
				{
					out.write("<b>Room " + roonName + " not found</b>");
					out.close();
				}
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception: "+ e.getMessage());
			throw new ServletException("Unable to get handle to ServletContext");
		}	
	
%>

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
.style4 {font-size: 14px; line-height: 18px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
.style5 {font-size: 14px; color: #0033CC; font-family: Arial, Helvetica, sans-serif;}
.style7 {color: #0000FF}
.style8 {color: #5B8E61}
body {
	background-color: #003399;
}
.style9 {font-weight: bold; color: #0000FF; line-height: normal; display: list-item; font-family: Arial, Helvetica, sans-serif;}
-->
</style><%
	int refreshAfter = 10000; // 10 seconds
	String t = application.getInitParameter("refreshAfter"); // gets seconds
	if (t != null)
	{
		try
		{
			refreshAfter = Integer.parseInt(t);
			refreshAfter = refreshAfter * 1000; // convert to mili seconds
		}
		catch (NumberFormatException nfe)
		{							
		}
	}
%>
<script language="JavaScript" type="text/javascript">
<!--
function reload()
{
	window.location.reload();
}

setInterval('reload()', <%=refreshAfter%>);

function winopen(path)
{
	chatterinfo = window.open(path,"chatterwin","scrollbars=no,resizable=yes, width=400, height=300, location=no, toolbar=no, status=no");
	chatterinfo.focus();
}
//-->
</script>

</head>
<body leftmargin="0" topmargin="0" onLoad="window.location.hash='#current'" > 
<table align="left" border="0" cellpadding="3" cellspacing="0" width="950" bgcolor=red height="300">
  <tbody><tr>
    <td width="899"><table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" height="300" width="852" bgcolor=red>
      <tbody>
        <tr bgcolor="#003399">
          <td width="852" height="38">
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
                
              </tbody>
          </table></td>
        </tr>
        <tr>
          <td height="28"><jsp:include page="useroptions.html"/></td>
        </tr>
        <tr>
          <td height="225" valign="top" bgcolor="#E6E2E9">
            <noscript>
            </noscript>            <img src="images/clearpixel.gif" align="top" height="10" width="10"><img src="images/clearpixel.gif" height="10" width="10">
<noscript>
            </noscript>Welcome  Patient  <%=(String)session.getAttribute("user")%>
<table width="100%">
<tr>
<td>
<h3><i><%=(String)session.getAttribute("nickname")%></i> you are in room <b><%=roonName%></b></h3>
<%
	
	if(messages != null && messages.length > 0)
	{
		for (int i = 0; i < messages.length; i++)
		{
			Message message = (Message)messages[i];
			String chatterName = message.getChatterName();
			String strmsg = message.getMessage();
			long time = message.getTimeStamp();
			Date date = new Date(time);

			if (chatterName.equalsIgnoreCase((String)session.getAttribute("nickname")))
			{
				out.write("<font face=\"Arial\" size=\"2\" color=\"blue\"><b>" + chatterName + " ("+ DateFormat.getTimeInstance().format(date)+ ")&gt;</b></font> " + strmsg+"<br>\n");
			}
			else if (chatterName.equalsIgnoreCase("system"))
			{
				out.write("<span class=\"error\">" + strmsg+"</span><br>\n");
			}
			else
			{
				out.write("<font face=\"Arial\" size=\"2\"><b>"+chatterName + " ("+ DateFormat.getTimeInstance().format(date)+ ")&gt;</b></font> " + strmsg + "<br>\n");
			}			
		}
		out.write("<a name=\"current\"></a>");
	}
	else
	{
		out.write("<font color=\"red\" face=\"Arial\" size=\"2\">There are currently no messages in this room</font>");
	}
	out.write("<a name=\"current\"></a>");
	%>
</td>
</tr>
</table>
	</td>
	<td width="100%" valign="top">
	<table width="90%" border="1" cellpadding="2" cellspacing="0">
		<tr>
			<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#2C259C">
		<tr>
			<td width="100%">
	<span class="white"><font color="White"><b><%=chatRoom.getNoOfChatters()%> people in this room</b></font></span><br/>
	</td>
	</tr>
	</table>
	<%
	Chatter[] chatters = chatRoom.getChattersArray();
	for(int i = 0; i < chatters.length; i++)
	{
		if (chatters[i].getName().equals(session.getAttribute("nickname")))
		{
	%>
	<font face="Arial" size="2" color="blue"><%=chatters[i].getName() + " (" +chatters[i].getSex() +")<br>"%></font>
	<%
		}
		else
		{
			out.write("<font face=\"Arial\" size=\"2\"><a href=\"javascript:winopen('viewinfo.jsp?chatterName="+chatters[i].getName() + "')\" title=\"View information about "+chatters[i].getName()+"\">"+ chatters[i].getName()+"</a> (" + chatters[i].getSex()+")</font><br>");
		}
	}

}
else
{
	response.sendRedirect("login.jsp");
}
%>
		</td>
	</tr>
</table>
</td>
</tr>
</table>

</td>
          </tr>
       
      </tbody>
    </table>  
</body></html>