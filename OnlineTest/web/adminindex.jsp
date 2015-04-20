

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
            
        <script type="text/javascript">

var i;

function passvalue(chk,chk1)
{
var count=0;
var nm=null;
var nm1=null;
for (i = 0; i < chk.length; i++)
    {
        if(chk[i].checked == true)
    {
            count++;

         if(nm==null)
           {  nm=chk[i].value;
               
           }
        else
            {
            nm=nm+" "+chk[i].value;
            
            }
            if(nm1==null)
             nm1=chk1[i].value;
        else
            {
            nm1=nm1+" "+chk1[i].value;

            }
            
    }
    }
    if(count==0)
        alert("Select any option");
    else
    window.location="edit.jsp?count="+count+"&name="+nm+"&name1="+nm1;

}
function passval(chk2)
{
    var nm2=null;

    var count=0;
    for (i = 0; i < chk2.length; i++)
    {
      //alert(chk2[i].value);
       if(chk2[i].checked == true)
        {
             count++;
               if(nm2==null)
               nm2=chk2[i].value;
               else
                {
                    nm2=nm2+" "+chk2[i].value;
                }
        } 
   // alert(chk2[i].checked);
    }
    if(count==0)
        alert("Select any option");
    else
    window.location="del.jsp?name2="+nm2;
} 

</script>
        <table align="center">
            <tr><td> 
             <%
            int i=0;
             try{
                Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from subj");

%>
<form name="myform" action="" method="post">
    <%
while(rs.next()!=false)
             {
    String subnm=rs.getString("subject_id")+"::"+rs.getString("subject_name");
    String edname=rs.getString("subject_name");
    %>

            <tr><td>
                    <input type="checkbox" name="option" value="<%=edname%>">
                     <input type="hidden" name="option1" value="<%=subnm%>">
                     <input type="hidden" name="option2" value="<%=edname%>">

                    </td>
                <td>    <%
                out.println(rs.getString("subject_id"));
                %>
                </td>
                <td>   <%
                out.println(rs.getString("subject_name"));
                %></td></tr>

<%
            
            i++;

            }
              String n=Integer.toString(i);;
  /* RequestDispatcher rd=request.getRequestDispatcher("edit.jsp?stnn=stn");
                     rd.forward(request, response);*/
            }

            catch(Exception e){
                out.println(e);
            }

%>
            <tr><td>                    
            <a href="subject.jsp"><input type="button" name="add" value="add"></a></td>
           <td><input type="button" name="edit" value="edit" onclick="passvalue(document.myform.option,document.myform.option1);"></td>
                <td><input type="button" name="delete" value="delete" onclick="passval(document.myform.option);">
               
        </td></tr>
               <%

            String b="1";

            if(b.equals(request.getParameter("er")))

             out.println("Details not modified:Try again");



            //String msg=request.getParameter("id");
            if(b.equals(request.getParameter("er1")))

             out.println("Id or Name already in use:Try again");



            %>
</form>
        </table>
            
    </body>
</html>
