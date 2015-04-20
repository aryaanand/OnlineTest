

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script type="text/javascript">
          function Trim(str)

{

    while (str.substring(0,1) == ' ') // check for white spaces from beginning

    {

        str = str.substring(1, str.length);

    }

    while (str.substring(str.length-1, str.length) == ' ') // check white space from end

    {

        str = str.substring(0,str.length-1);

    }



    return str;

}

function validateform()
{  var str=document.form.FirstName.value;
    if(str.substring(0,1) == ' ')
        {document.form.FirstName.value="";
        }
     if(str.substring(str.length-1, str.length) == ' ')
         {
             document.form.FirstName.value="";
         }

        if(document.form.FirstName.value==""){
        alert("Enter First Name");
        document.form.FirstName.value="";
        document.form.FirstName.focus();
        return false;
    }
     var str1=document.form.LastName.value;
    if(str1.substring(0,1) == ' ')
        {document.form.LastName.value="";
        }
     if(str1.substring(str1.length-1, str1.length) == ' ')
         {
             document.form.LastName.value="";
         }
    if(document.form.LastName.value==""){
        alert("Enter Last Name");
        document.form.LastName.value="";
        document.form.LastName.focus();
        return false;
    }
    if(document.form.Email.value==""){
        alert("Enter Correct Email ID");
        document.form.Email.value="";
        document.form.Email.focus();
        return false;
    }
    else
           {
                var str=document.form.Email.value;

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

	else	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

	else	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

	else	 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

	else	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

	else	 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

	else	 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
	}

    if(document.form.Password.value==""){
        alert("Enter Passowrd");
        document.form.Password.value="";
        document.form.Password.focus();
        return false;
    }
    if(document.form.ConfirmPassword.value==""){
        alert("Confirm Password");
        document.form.ConfirmPassword.value="";
        document.form.ConfirmPassword.focus();
        return false;
    }
    if(document.form.Password.value!=document.form.ConfirmPassword.value){
        alert("Password Mismatch");
        document.form.ConfirmPassword.value="";
        document.form.ConfirmPassword.focus();
        return false;
    }

document.form.FirstName.value=Trim(document.form.FirstName.value);
document.form.LastName.value=Trim(document.form.LastName.value);
}
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body bgcolor="yellow">
        <h1><center>Register</center></h1>
        <form method="POST" action="./register" onsubmit="return validateform()" name="form">

            <table align="center">
                <tr>
                    <td> First Name:</td><td>&nbsp;</td> <td> <input type="text" name="FirstName" size="15"/> </td>
                </tr>
                <tr>  <td> Last Name: </td><td>&nbsp;</td><td><input type="text" name="LastName" size="15"/></td></tr>
                <tr>  <td> Email(Username): </td><td>&nbsp;</td><td><input type="text" name="Email" size="15"/></td></tr>
                <tr>  <td> Password: </td><td>&nbsp;</td><td><input type="password" name="Password" size="15"/></td></tr>
                <tr>  <td> Confirm Password: </td><td>&nbsp;</td><td><input type="password" name="ConfirmPassword" size="15"/></td></tr>
                <tr>  <td></td><td>&nbsp;</td><td><input type="submit" value="register"></td></tr>
                <tr><td><a href="log.jsp">If registered,go to login page</a></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                           <tr><td><a href="index.jsp">Go to Home Page</a></td></tr>
            </table>

                    <%

            String b="1";
            //String msg=request.getParameter("id");
            if(b.equals(request.getParameter("id1")))

             out.println(":User name already in use: :Register again:");
          
           //out.println("Register again");
                      // out.println(request.getParameter("id"));

            %>

        </form>

    </body>
</html>
