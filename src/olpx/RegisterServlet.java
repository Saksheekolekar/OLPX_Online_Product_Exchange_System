package olpx;

import java.io.*;

import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			// Register JDBC driver
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			
			// Open a connection
			conn = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
			
			// Execute SQL query
			String sql = "INSERT INTO users (username, password, email) VALUES (?,?,?)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, email);
			stmt.executeUpdate();
			
			response.sendRedirect("olpx/login.jsp");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
			response.getWriter().println("Error: " + e.getMessage());
		} finally {
			try {
				if (stmt != null) stmt.close();
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
