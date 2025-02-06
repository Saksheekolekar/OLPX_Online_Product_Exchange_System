package olpx;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	try {
		// Register JDBC driver
		Class.forName("org.postgresql.Driver");
		
		// Open a connection
		conn = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
		
		// Execute SQL query
		String sql = "SELECT * FROM users WHERE username=? AND password=?";
		stmt = conn.prepareStatement(sql);
		stmt.setString(1, username);
		stmt.setString(2, password);
		rs = stmt.executeQuery();
		
		if (rs.next()) {
			// Create a session and store user details
			HttpSession session = request.getSession();
			session.setAttribute("userId", rs.getInt("id"));
			session.setAttribute("username", rs.getString("username"));
			session.setAttribute("email", rs.getString("email"));
			
			response.sendRedirect("dashboard.jsp"); // Redirect to dashboard page
		} else {
			response.sendRedirect("login.jsp?error=invalid"); // Redirect to login page with error message
		}
	} catch (Exception e) {
		e.printStackTrace();
		response.getWriter().println("Error: " + e.getMessage());
	} finally {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
}