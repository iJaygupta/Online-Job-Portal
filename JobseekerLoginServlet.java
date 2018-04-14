
package Test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jay Gupta
 */
public class JobseekerLoginServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        try 
        {
           
            
            String semail=request.getParameter("jemail");
            String spass=request.getParameter("jpass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select name from jobseeker where email='"+semail+"' and password='"+spass+"'");
            String name="";
            HttpSession session=null;
            while(rs.next())
            {   name=rs.getString(1);
                session=request.getSession();
                session.setAttribute("jemail",semail);
            }
            if((session==null || session.getAttribute("jemail")==null))
            {   request.setAttribute("errmsg","X");
            request.getRequestDispatcher("LoginJobseeker.jsp").forward(request, response);
                
            }
          else
          {   
            request.setAttribute("J",semail);
            request.getRequestDispatcher("JobseekerDashboard.jsp").forward(request, response);
                          
          }   
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  

    }
