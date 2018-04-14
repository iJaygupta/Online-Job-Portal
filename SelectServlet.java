
package Test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jay Gupta
 */
public class SelectServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        
           
            
String comp=request.getParameter("company");                
String date=request.getParameter("date");;
String address=request.getParameter("address");
String role=request.getParameter("role");
String st="Shortlisted";
String email=request.getParameter("seeker");;
String emp=request.getParameter("emp");        
try
{    

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
Statement  stmt=conn.createStatement();
int i=stmt.executeUpdate("insert into applicationstatus(Company,Jobrole,Status,Date,Address,Empemail,Email)values('"+comp+"','"+role+"','"+st+"','"+date+"','"+address+"','"+emp+"','"+email+"')");
request.setAttribute("E",emp);
request.getRequestDispatcher("EmployerDashboard.jsp").forward(request, response);
}
catch(IOException | ClassNotFoundException | SQLException e)
{
System.out.print(e);
}
    }  

    }
