
package Test;


import java.io.IOException;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class ProfileEmployerServlet extends HttpServlet {  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                      throws ServletException, IOException {  
        
          
        HttpSession session=request.getSession(false);  
        if(session!=null && session.getAttribute("name")!=null){  
        String name=(String)session.getAttribute("name");  
           response.sendRedirect("ProfileEmployer.jsp");
          
        } 
        else 
        {  
            
           response.sendRedirect("LoginEmployer.jsp");
        }  
        
    }  
}  