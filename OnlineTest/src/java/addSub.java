import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import java.lang.*;

public class addSub extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    // Hashtable hashtable=new Hashtable();
            //String n=request.getParameter("subj1");
            String n=request.getParameter("no");
            //out.println(n);
            int noofsub=Integer.parseInt(n);
            for(int i=0;i<noofsub;i++)
            {
               String nid=request.getParameter("id"+i);
                String nsub=request.getParameter("subj"+i);
            //    out.println(nsub);
              //  out.println(nid);

                 try{
                     String st="insert into subj values('"+nid+"','"+nsub+"')";
                Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement stm=con.createStatement();
               int rs1=stm.executeUpdate(st);
               if (rs1==1)
               {
                   out.println("details inserted");

               }
               
                 }
                catch(Exception e){
                 RequestDispatcher rd=request.getRequestDispatcher("subject.jsp?id1=1");
                     rd.forward(request, response);
            }
    }
}
}