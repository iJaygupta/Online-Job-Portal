
package Test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jay Gupta
 */
public class AddJobServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
       String comp=request.getParameter("cname");
String role=request.getParameter("jobrole");
String loc=request.getParameter("location");
String qual=request.getParameter("qualification");
String exp=request.getParameter("experience");        
String sal=request.getParameter("salary");
String date=request.getParameter("lastdate");

StringBuilder elig=new StringBuilder();
        elig.append(request.getParameter("eligibility"));
StringBuilder desc=new StringBuilder();
       desc.append(request.getParameter("description"));
String em=request.getParameter("eml");       

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
Statement stmt=conn.createStatement();

   
int i=stmt.executeUpdate("insert into jobs(jobrole,company,Qual,salary,Experience,Date,Location,Eligibility,Description,emailid)values('"+role+"','"+comp+"','"+qual+"','"+sal+"','"+exp+"','"+date+"','"+loc+"','"+elig+"','"+desc+"','"+em+"')");
 
  request.setAttribute("J",em);
  request.getRequestDispatcher("JobseekerDashboard.jsp").forward(request, response);
stmt.close();
conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
    }  

    }
