<!DOCTYPE html>
<html>
<head>
 <%@ page import="java.sql.*" %> 
 <%@ page import="java.io.*" %> 
 <%@ page session="true" %> 
	<meta charset="UTF-8">
	<title> Admin Login Page</title>
	<style>
		body 
		{background-image: url("background.jpg");
			background-color: #f1f1f1;
			font-family: Arial, sans-serif;
		}
		
		.container {
			background-color: #ffffff;
			padding: 20px;
			max-width: 500px;
			margin: auto;
			margin-top: 50px;
			border-radius: 10px;
			box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
		}
		
		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		
		button {
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}
		
		button:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Admin Login</h1>
		<form action="adminlogin.jsp" method="post">
			<label for="adminname">Admin Name:</label>
			<input type="text" name="adminname" id="adminname" required><br><br>
			<label for="password">Password:</label>
			<input type="password" name="password" id="password" required><br><br>
			<button type="submit">Login</button>
		</form>
	</div>
</body>
</html>
<%
response.setContentType("text/html");

ResultSet rs=null;
String username = request.getParameter("adminname");
String password = request.getParameter("password");
if(username!=null && password!=null)
{
try {
     Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
    
    PreparedStatement ps = con.prepareStatement("SELECT * FROM admin WHERE username=? AND password=?");
    ps.setString(1, username);
    ps.setString(2, password);
    
    rs = ps.executeQuery();
    
    
    if (rs.next()) {
    
		session.setAttribute("username", rs.getString("username"));
        response.sendRedirect("admin.jsp");
    } else {
        out.println("<html><body>");
        out.println("<h2>Enter valid details..!!!</h2>");
        out.println("</body></html>");
    }
} catch (Exception e)
{
    e.printStackTrace();
    out.print(""+e);
}
}
%>