
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
public class AddEmployerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
   
   String name=request.getParameter("ename");
String comp=request.getParameter("cname");
String email=request.getParameter("eemail");
String pass=request.getParameter("epass");
String comptype=request.getParameter("ctype");
String mobile=request.getParameter("emobile");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into employer(companyname,ename,email,password,mobile,type)values('"+comp+"','"+name+"','"+email+"','"+pass+"','"+mobile+"','"+comptype+"')");
 request.setAttribute("errmsg","L");
 request.getRequestDispatcher("LoginEmployer.jsp").forward(request, response);
st.close();
conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
}
