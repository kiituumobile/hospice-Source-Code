<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Recoverpasswordform.html</TITLE>
		<META http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<META http-equiv="description" content="this is my page">
		<META http-equiv="content-type"
			content="text/html; charset=ISO-8859-1">

		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

	</HEAD>
	<SCRIPT type="text/javascript" src="scripts/general.js"> </SCRIPT>

	<BODY>
		<FORM action="RecoverPasswordAction.jsp" method="post" name="register">
			<TABLE border="0" align="center">

				<TR>
					<TD>
						<TABLE border="0" align="center">

							<TR>
								<TD align="right"></TD>
								<TD>
									<TABLE border="0" align="center">
										<TR>
											<TD>
												Login Name
											</TD>
											<TD>
												<INPUT type="text" name="username">
											</TD>
										</TR>
										<TR>
											<TD>
												Secret Question
											</TD>
											<TD>
												<SELECT name="squest">
													<OPTION value="1">
														What is your favorite pastime?
													</OPTION>
													<OPTION value="2">
														Who was your childhood hero?
													</OPTION>
													<OPTION value="3">
														What was the name of your first school?
													</OPTION>
													<OPTION value="4">
														Where did you meet your spouse?
													</OPTION>
													<OPTION value="5">
														What is your favorite sports team?
													</OPTION>
													<OPTION value="6">
														What is your father's middle name?
													</OPTION>
													<OPTION value="7">
														What was your high school mascot?
													</OPTION>
													<OPTION value="8">
														What make was your first car or bike?
													</OPTION>
													<OPTION value="9">
														What is your pet's name?
													</OPTION>
												</SELECT>
											</TD>
										</TR>
										<TR>
											<TD colspan="2">
												<INPUT type="checkbox" name="ch" value="1" onClick="check()">
												Own Question
											</TD>
										</TR>
										<TR>
											<TD>
												Own Question
											</TD>
											<TD>
												<INPUT type="text" name="ownquest" disabled>
											</TD>
										</TR>
										<TR>
											<TD>
												Secret Answer
											</TD>
											<TD>
												<INPUT name="sanswer" type="text">
											</TD>
										</TR>
										<TR>
											<TD colspan="2">
												<DIV align="center">
													<INPUT name="Input" type="submit" value="Recover">
													&nbsp;
													<INPUT name="Input" type="reset" value="Clear">
												</DIV>
											</TD>
										</TR>
									</TABLE>
								</TD>
								<TD>
									&nbsp;
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</FORM>
	</BODY>
</HTML>
