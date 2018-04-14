
package Test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ApplicationServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
String jname=request.getParameter("name");
String jqual=request.getParameter("qual");
String jrole=request.getParameter("role");
String jexp=request.getParameter("exp");
String jskills=request.getParameter("skills");        
String jloc=request.getParameter("loc");
String jstr=request.getParameter("str");
String jgrad=request.getParameter("grad");
String jtwelth=request.getParameter("twelth");
String jday=request.getParameter("day");
String jmonth=request.getParameter("month");
String jyear=request.getParameter("year");
StringBuffer jdob=new StringBuffer();
jdob.append(jday).append(" ").append(jmonth).append(" ").append(jyear);

      
String jemail=request.getParameter("email");
String jmobile=request.getParameter("mobile");
String jgender=request.getParameter("gender");
String empemail=request.getParameter("empem");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
Statement stmt=conn.createStatement();

    
  int i=stmt.executeUpdate("insert into applications(Name,Qual,Desirerole,Experience,Skills,Location,Strengths,Gradpercent,Twelthpercent,DOB,Seekeremail,Phone,Gender,Empemail)values('"+jname+"','"+jqual+"','"+jrole+"','"+jexp+"','"+jskills+"','"+jloc+"','"+jstr+"','"+jgrad+"','"+jtwelth+"','"+jdob+"','"+jemail+"','"+jmobile+"','"+jgender+"','"+empemail+"')"); 
 request.setAttribute("J",jemail);
 request.getRequestDispatcher("JobseekerDashboard.jsp").forward(request, response);
 

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
    }  

    }
