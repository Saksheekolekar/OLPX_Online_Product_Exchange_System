

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <!DOCTYPE html>
    <%@ page import="java.sql.*" %> 
 <%@ page import="java.io.*" %> 
 <%@ page session="true" %> 
<html>
<head>
	<title>Login Page</title>
	<style type="text/css">
	body {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url("background.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 20px;
}

h1 {
	margin: 0;
}

.container {
	background-color: #FFF;
	padding: 20px;
	margin: 50px auto;
	max-width: 400px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px #888888;
}

h2 {
	margin-top: 0;
	text-align:center;
}

form {
	display: flex;
	flex-direction: column;
}

label {
	margin-bottom: 5px;
}

input[type="text"], input[type="password"] {
	padding: 10px;
	margin-bottom: 15px;
	border-radius: 5px;
	border: none;
	box-shadow: 0px 0px 5px #888888;
}

.login-btn {
	background-color: #4CAF50;
	color: white;
	border-radius: 5px;
	padding: 10px;
	margin-top: 10px;
	border: none;
	cursor: pointer;
	box-shadow: 0px 0px 5px #888888;
	transition-duration: 0.3s;
}

.login-btn:hover {
	background-color: #3e8e41;
}

footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 10px;
	position: absolute;
	bottom: 0;
	width: 100%;
}
	
</style>
</head>
<body>
	<header>
		<h1>Online Product Exchange System (olpx)</h1>
	</header>

	<div class="container">
		<h2>Login:</h2>
		<form action="login.jsp" method="post">
			<label for="username">Username</label>
			<input type="text" id="username" name="username" required>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>
			<button type="submit" class="login-btn">Login</button>
		</form>
	</div>

	<footer>
		<p>This is the e-commerce website where you can buy the second hand product and also sells your's.</p>
	</footer>

</body>
</html>
<%
response.setContentType("text/html");

ResultSet rs=null;
String username = request.getParameter("username");
String password = request.getParameter("password");
if(username!=null && password!=null)
{
try {
     Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
    
    PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
    ps.setString(1, username);
    ps.setString(2, password);
    
    rs = ps.executeQuery();
    
    
    if (rs.next()) {
    
		session.setAttribute("username", rs.getString("username"));
		session.setAttribute("password", rs.getString("password"));
        out.println("<html><body>");
        out.println("<h2>Login successful!</h2>");
        out.println("</body></html>");
        response.sendRedirect("choice.jsp");
    } else {
        out.println("<html><body>");
        out.println("<h2>Login failed. Invalid username or password.</h2>");
        out.println("</body></html>");
    }
} catch (Exception e) {
    e.printStackTrace();
}
}
%>
  