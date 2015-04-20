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
        <%
        int i;
        String[] m2=new String[30];
             String nme2=(request.getParameter("name2"));
         int y=0;
        StringTokenizer st2 = new StringTokenizer(nme2);
        while (st2.hasMoreTokens())
        {
              m2[y]=st2.nextToken();
               y++;
        }
   for(i=0;m2[i]!=null;i++)
            {
                 
            String delnm=m2[i];
            // out.println(delnm);
                try{

            String st="DELETE FROM `brainonbench`.`subj` WHERE `subj`.`subject_name` = '"+delnm+"'";
                    Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement stm=con.createStatement();
                int rs1=stm.executeUpdate(st);
                if(rs1==1)
                       out.println("Details deleted");
               else
        {
         //   RequestDispatcher rd=request.getRequestDispatcher("adminindex.jsp?er=1");
           //          rd.forward(request, response);
                    out.println("Details not modified");
        }

            }

            catch(Exception e)
            {
        /*           RequestDispatcher rd=request.getRequestDispatcher("adminindex.jsp?er1=1");
                     rd.forward(request, response);*/
            //    out.println("error");
                out.println(e);

            }

}

            %>


       