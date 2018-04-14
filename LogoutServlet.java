
package Test;

import java.io.IOException;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class LogoutServlet extends HttpServlet {  
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            
              
            HttpSession session  = request.getSession();
try
{      
    session.removeAttribute("jemail");
    session.invalidate();                               
    String pageToForward = request.getContextPath();
    response.sendRedirect(pageToForward);           
}
catch (Exception sqle)
{
    System.out.println("error UserValidateServlet message : " + sqle.getMessage());
    System.out.println("error UserValidateServlet exception : " + sqle);
}
           
            
           
            
            
            
             
            
              
            
    }  
}  