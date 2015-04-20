<%--
    Document   : register
    Created on : Nov 19, 2010, 11:19:28 PM
    Author     : arya
--%>

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
{  var str=document.form.Email.value;
    if(str.substring(0,1) == ' ')
        {document.form.Email.value="";
        }
     if(str.substring(str.length-1, str.length) == ' ')
         {
             document.form.Email.value="";
         }

        if(document.form.Email.value==""){
        alert("Enter User Name");
        document.form.Email.value="";
        document.form.Email.focus();
        return false;

    }
    if(document.form.Password.value==""){
        alert("Enter Password");
        document.form.Password.value="";
        document.form.Password.focus();
        return false;
    }
}
</script>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body bgcolor="yellow">
        <h1><center>Login</center></h1>

    <body>
        <form method="POST" action="./Login1" onsubmit="return validateform()" name="form">

            <table align="center">
                <tr>
                    <td> Username:</td><td>&nbsp;</td> <td> <input type="text" name="Email" size="15"/> </td>
                </tr>
                <tr>  <td> Password: </td><td>&nbsp;</td><td><input type="password" name="Password" size="15"/></td></tr>
                <tr>  <td></td><td>&nbsp;</td><td><input type="submit" value="login"></td></tr>
                <tr><td><a href="register.jsp">If not registered,register first</a></td></tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr><td><a href="index.jsp">Go to Home Page</a></td></tr>
                     </table>

                 <%

            String a="1";
            //String msg=request.getParameter("id");
            if(a.equals(request.getParameter("id")))
               out.println("wrong username and password");
                      // out.println(request.getParameter("id"));

            %>
        </form>

    </body>
</html>
