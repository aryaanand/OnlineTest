

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
       



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        String sname=request.getParameter("n");//out.println(n);
        int i;
       try{
                Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select chap_name from chapter where sub_name='"+sname+"'");
                %>
                    <table>

                <form name="myform" action="" method="post">
                    <%
                while(rs.next()!=false)
             {
    String chapnm=rs.getString("chap_name");

    %>


            <tr><td>
                    <input type="checkbox" name="option" value="<%=chapnm%>">


                    </td><tr>
                <td>

                 <%
                out.println(rs.getString("chap_name"));
                %></td></tr>

<%



            }

                }
                catch(Exception e)
                        {
                    out.println(e);
                         }

%>
        <tr><td>
            <a href="adchap.jsp"><input type="button" name="add" value="add"></a></td>
           <td><input type="button" name="edit" value="edit" onclick="passvalue(document.myform.option,document.myform.option1);"></td>
                <td><input type="button" name="delete" value="delete" onclick="passval(document.myform.option);">

        </td></tr>
               
</form>
        </table>
        


    </body>
</html>


