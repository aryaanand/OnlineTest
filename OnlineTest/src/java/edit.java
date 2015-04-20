/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import java.lang.*;
/**
 *
 * @author matsya1
 */
public class edit extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int i;
         String[] m1=new String[30];
    int no=Integer.parseInt(request.getParameter("coun"));
    String nm1=request.getParameter("edn");
     int y1=0;
      StringTokenizer st1 = new StringTokenizer(nm1);

         while (st1.hasMoreTokens())
        {
              m1[y1]=st1.nextToken();
               y1++;
        }
    //  out.println(m1[0]);
    for(i=0;i<no;i++)
    {
       
        String editid=request.getParameter("edid"+i);
          String editnm=request.getParameter("ednm"+i);



        try{
            String st="UPDATE `brainonbench`.`subj` SET `subject_id` = '"+editid+"',`subject_name` = '"+editnm+"' WHERE `subj`.`subject_name` = '"+m1[i]+"'";
                    Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement stm=con.createStatement();
                int rs1=stm.executeUpdate(st);


                if(rs1==1)
                       out.println("Details modified");
                else
        {
            RequestDispatcher rd=request.getRequestDispatcher("adminindex.jsp?er=1");
                     rd.forward(request, response);
        }

            }

            catch(Exception e)
            {
                   RequestDispatcher rd=request.getRequestDispatcher("adminindex.jsp?er1=1");
                     rd.forward(request, response);
            //    out.println("error");

            }

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
           // out.println(n);

            out.println("</body>");
            out.println("</html>");




    }
}



}

