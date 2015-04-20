
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import java.lang.*;

public class Login1 extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
     Hashtable hashtable=new Hashtable();
            String n=request.getParameter("Email");
            String m=request.getParameter("Password");

           //out.println(m);
          // out.println(n);

      /* if(m==""&& n=="")
       {
           request.setAttribute("blank","nul");
           String c="Brain_on_Bench/index.jsp";
           RequestDispatcher dispatcher = request.getRequestDispatcher(c);
           if (dispatcher != null){
           dispatcher.forward(request, response);

       }*/

        try{
                Class.forName("com.mysql.jdbc.Driver");//out.println("HI");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/brainonbench","root","root");
                //out.println(con);
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from registration where Email='"+n+"' and Password='"+m+"'");


                if(rs.next())
                {
                  out.println("welcome");


             }
                else
                {



                     RequestDispatcher rd=request.getRequestDispatcher("log.jsp?id=1");
                     rd.forward(request, response);


                }

            }
            catch(Exception e){
                out.println(e);
            }

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println(n);

            out.println("</body>");
            out.println("</html>");




    }
}
