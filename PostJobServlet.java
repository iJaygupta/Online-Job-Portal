
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
public class PostJobServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        
           
            
                 
             HttpSession session=request.getSession(false);
               
              String ne=request.getParameter("em");
            
           
          
         try    
        {   String semail=(String)session.getAttribute("jemail");    
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select ename from employer where email='"+semail+"' ");
           
                Boolean b=true;
                while(rs.next())
            {    request.setAttribute("emp", ne);
                 request.getRequestDispatcher("PostJob.jsp").forward(request, response);
                 b=false; 
            }
            if(b)
            {   request.setAttribute("errmsg","F");
                request.getRequestDispatcher("LoginEmployer.jsp").forward(request, response);
             }
          
        }
          catch (ClassNotFoundException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(JobseekerLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }       
       
    } 

    
