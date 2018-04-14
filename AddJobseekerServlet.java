/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddJobseekerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        try 
        {  String jname=request.getParameter("sname");
String jcourse=request.getParameter("scourse");
String jemail=request.getParameter("semail");
String jpass=request.getParameter("spass");
String jskill=request.getParameter("skill");
String jmobile=request.getParameter("smobile");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobmarket", "root", "admin");
Statement stmt=conn.createStatement();
 
int i=stmt.executeUpdate("insert into jobseeker(email,name,password,mobile,course,skill)values('"+jemail+"','"+jname+"','"+jpass+"','"+jmobile+"','"+jcourse+"','"+jskill+"')");
 request.setAttribute("errmsg","F");
 request.getRequestDispatcher("LoginJobseeker.jsp").forward(request, response);
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

  