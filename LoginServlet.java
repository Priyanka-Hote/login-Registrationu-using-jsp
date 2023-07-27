package cscorner;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// database connectivity code
		
		try {
			PrintWriter out = response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","yourusername","yourpassword");
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    
		    // getting the value from the database for validation of input
		    
		    PreparedStatement ps =con.prepareStatement("select name from emp where email=? and password =?");
		    ps.setString(1, email);
		    ps.setString(2, password);
		    
		    ResultSet rs =ps.executeQuery();
		    
		    if (rs.next()) 
		    {
		    	 String userName = rs.getString("name");
	                // Store the user's name in a session to use it across requests
	                HttpSession session = request.getSession();
	                session.setAttribute("userName", userName);
	                response.sendRedirect("welcome.jsp");
		    	//RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
		    	//rd.forward(request, response);
		    }
		    else
		    {
		    	out.println("<font color = red size =6> Log in Failed !!!! <br>");
		    	out.println("<a href =login.jsp>Try Again</a>");
		    }
		} 
		catch (ClassNotFoundException e) 
		     {
			e.printStackTrace();
		    } catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
