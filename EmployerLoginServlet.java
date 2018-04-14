
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
public class EmployerLoginServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        try 
        {
           
            
            String empemail=request.getParameter("email");
            String emppass=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select ename from employer where email='"+empemail+"' and password='"+emppass+"'");
            String name="";
            HttpSession session=null;
            while(rs.next())
            {   name=rs.getString(1);
                session=request.getSession();
                session.setAttribute("jemail",empemail);
            }
            if((session==null || session.getAttribute("jemail")==null))
            {  request.setAttribute("errmsg","Z");
            request.getRequestDispatcher("LoginEmployer.jsp").forward(request, response);
                
            }
          else
          {   
            
            request.setAttribute("E",empemail);
             
            request.getRequestDispatcher("EmployerDashboard.jsp").forward(request, response);
          }   
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }  

    }
