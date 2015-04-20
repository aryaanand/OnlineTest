
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
        <script type="text/javascript" src="passval.js"></script>
    </head>
    <body>
        <h1><center>Subject Page</center></h1>
        <table align="left">
                <tr>
                    <td>  <a href="adminindex.jsp"> Subject:</a></td><td>&nbsp;</td>
                </tr>
                <tr>  <td> <a href="chapter.jsp">Chapter: </a></td><td>&nbsp;</td>
                <tr>  <td><a href="ques.jsp"> Question:</a></td><td>&nbsp;</td>
                <tr>  <td> <a href="student.jsp>"Student:</a> </td><td>&nbsp;</td><td>
                <tr>  <td><a href="setting.jsp"> Setting: </a></td><td>&nbsp;</td><td>


            </table>


      <head>
      <title>test</title>
      <script type="text/javascript" src="ajax1.js"></script>
      </head>
      <h1><center>Select Subjects</center></h1>
        <body bgcolor="yellow">
             <%
            int i=0;
             try{
                Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select subject_name from subj");

%>
            <form action="" method="post">
                <select onchange="addchap(this.value);">
                <option value="0" selected>select</option>
                <%
while(rs.next()!=false)
             {
    String subnm=rs.getString("subject_name");
    %>
                

                    <option value=<%=subnm%>><%=subnm%></option>

                
                    <%
}
%>
        </select>
        <div id="addchap">
                </div>
        <%
}
             catch(Exception e){
                out.println(e);
            }
%>

           </form>
       </body>
     </html>