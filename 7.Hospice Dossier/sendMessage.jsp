<!-- Written by Sukhwinder Singh (ssruprai@hotmail.com -->
<%-- Written by Sukhwinder Singh (ssruprai@hotmail.com --%>

<%@ page isErrorPage="false" errorPage="error.jsp" import="java.util.Set,java.util.Iterator,java.util.Map,sukhwinder.chat.*"%>
<% 
	
	String nickname = (String)session.getAttribute("nickname");
	
	if (nickname != null && nickname.length() > 0)
	{
		ChatRoomList roomList = (ChatRoomList)application.getAttribute("chatroomlist");
		ChatRoom chatRoom = roomList.getRoomOfChatter(nickname);
		if ( chatRoom != null)
		{
			String msg = request.getParameter("messagebox");
			
			if ( msg != null && msg.length() > 0)
			{
				msg = msg.trim();
				chatRoom.addMessage(new Message(nickname, msg, new java.util.Date().getTime()));
			}
	
%>
<HTML>
<HEAD>
<LINK rel="stylesheet" type="text/css" href="chat.css">
<META http-equiv="pragma" content="no-cache">
<meta name="Author" content="Sukhwinder Singh (ssruprai@hotmail.com">	

<SCRIPT language="JavaScript" type="text/javascript">
<!--

function winopen(path)
{
	chatterinfo = window.open(path,"chatterwin","scrollbars=no,resizable=yes, width=400, height=300, location=no, toolbar=no, status=no");
	chatterinfo.focus();

}

//-->
</SCRIPT>
</HEAD>
<BODY onLoad="document.msg.messagebox.focus();" bgcolor="#FFFFFF">
<TABLE width="100%" cellpadding="3" cellspacing="0">
	<TR> 
		<TD width="50%" align="left" valign="top"> 
			<TABLE>
				<TR> 
					<FORM name="msg" action="sendMessage.jsp" method="post">
						<TD width="100%"> 
							<INPUT type="text" name="messagebox" maxlength="300" size="35">
							<INPUT type="hidden" name="nickname" value="<%=session.getAttribute("nickname")%>">
							<INPUT name="submit" type="submit" value="Send">
						</TD>
					
				</TR>
			</TABLE>
		</TD>
	 
	</TR>
</TABLE>
</BODY>
</HTML>
<%
		}
		else
		{
			out.write("<h2 class=\"error\">Your room couldn't be found. You can't send message</h2>");
		}
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
%>
