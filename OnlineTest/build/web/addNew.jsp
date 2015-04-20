

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        int n=Integer.parseInt(request.getParameter("n"));//out.println(n);
        int i;
        for(i=0;i<n;i++)
        {
String st = Integer.toString(i);
        %>
  Subject ID      <input type="text" name="id<%=st%>"></br>
  Subject Name  <input type="text" name="subj<%=st%>"></br>
  </br></br>
        <%
       }
        if(n>0)
            {
        %>


        <input type="submit" value="submit">
        <%
        }

        %>
        <input type="hidden" name="no" value="<%=n%>">
            

    </body>
</html>


