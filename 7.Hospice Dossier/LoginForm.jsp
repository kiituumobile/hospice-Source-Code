<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>LoginForm</title>
	
	<script type="text/javascript" src="scripts/project.js"></script>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  
  <body>
   <blockquote>
     <blockquote>
       <form action="LoginAction.jsp" method="post" name="register" onsubmit="return  validateFields()">
         <table width="200" border="0" align="center">
           <tr>
             <td><table  border="0" >
               <tr>
                 <td height="120" align="right"></td>
                 <td><table border="0" align="center">
                   <tr>
                     <td >Username</td>
                      <td ><input type="text" name="username">                      </td>
                      </tr>
                   <tr>
                     <td>Password</td>
                      <td>
                        <input type="password" name="password">                      </td>
                      </tr>
                   <tr>
                     <td colspan="2">
                       <div align="center">
                         <input type="submit" name="Submit" value="Sign In">
                          &nbsp;
                          <input name="Input2" type="reset" value="Clear">
                         </div>                        </td>
                      </tr>
                 </table></td>
                 <td>&nbsp;</td>
               </tr>
               <tr>
                 <td >&nbsp;</td>
                 <td valign="baseline">
                 <div align="center"><a href="RecoverPassword.jsp">Forgot Password ! !......</a></div></td>
                 <td>&nbsp;</td>
               </tr>
             </table></td>
           </tr>
           </table>
                    </form>
                    
             <script language="JavaScript" type="text/javascript">

var frmvalidator  = new  Validator("register");
   
  frmvalidator.addValidation("username","Please Enter UserName ");
  frmvalidator.addValidation("password","Please Enter Password");
 
</script>

      
                    
                    
     </blockquote>
   </blockquote>
  </body>
</html>
