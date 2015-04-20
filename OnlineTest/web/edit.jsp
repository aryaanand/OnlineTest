<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@page    import="java.io.IOException"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><center>Administrator Page</center></h1>
        <table align="left">
                <tr>
                    <td> Subject:</td><td>&nbsp;</td>
                </tr>
                <tr>  <td> Chapter: </td><td>&nbsp;</td>
                <tr>  <td> Question: </td><td>&nbsp;</td>
                <tr>  <td> Student: </td><td>&nbsp;</td><td>
                <tr>  <td> Setting: </td><td>&nbsp;</td><td>


            </table>
        <table align="center">

        <%
        int i;
        String[] m=new String[30];
       
             int n=Integer.parseInt(request.getParameter("count"));
             String nme=(request.getParameter("name"));
             String nme1=(request.getParameter("name1"));
         int y=0;
        
        StringTokenizer st = new StringTokenizer(nme1);
       
        while (st.hasMoreTokens()) 
        {
              m[y]=st.nextToken();
               y++;
        }
        
   for(i=0;i<n;i++)
            {
              //  m[i]=(request.getParameter("name"+no));
        //   out.println(n);
           
            
     
            

                     //  String subn=request.getParameter("option"+i);
            %>
            <form method="post" action="./edit">

                <tr><td>      <h1>  <%out.println(m[i]);%> </h1> </td> </tr><tr> <td>  Subject ID   : </td><td>  <input type="text" name="edid<%=i%>"></td></tr>
                <tr><td>       Subject Name :  </td></tr><tr><td> </td><td><input type="text" name="ednm<%=i%>"></td></tr>

             

             
            <input type="hidden" name="edn" value="<%=nme%>">
            <%
// out.println(i);
            } 
             
             %>
             <tr><td>  <input type="submit" value="edit"></td></tr>
             <input type="hidden" name="coun" value="<%=n%>">
            

            </form>
        </table>