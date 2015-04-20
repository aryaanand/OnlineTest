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
public class register extends HttpServlet {

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
        String fn=request.getParameter("FirstName");
            String ln=request.getParameter("LastName");
            String em=request.getParameter("Email");
             String pa=request.getParameter("Password");
              String cp=request.getParameter("ConfirmPassword");
           //   out.println(ln);
             // out.println(em);
             // out.println(pa);
 /* if(pa.equals(cp))
      out.println("Password matched");
  else
      out.println("Re enter the password");*/



        try{
            String st="insert into registration values('"+fn+"','"+ln+"','"+em+"','"+pa+"')";
                    Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement stm=con.createStatement();
                int rs1=stm.executeUpdate(st);


                if(rs1==1)
                       out.println("Registration completed");
                else
                {




                     RequestDispatcher rd=request.getRequestDispatcher("index.jsp?id1=1");
                     rd.forward(request, response);



                }

            }
            catch(Exception e)
            {
                     RequestDispatcher rd=request.getRequestDispatcher("register.jsp?id2=1");
                     rd.forward(request, response);


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





