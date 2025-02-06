<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
 <%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Page</title>
	<style>
		/* Add styles to the form container */
		.container {
			border-radius: 5px;
			background-color: #f2f2f2;
			padding: 20px;
			margin-top: 50px;
			margin-bottom: 50px;
			text-align: center;
			width: 500px;
			margin-left: auto;
			margin-right: auto;
		}
h2 {
	margin-top: 0;
	text-align:center;
}

		/* Add styles to the input fields */
		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			box-sizing: border-box;
		}

		/* Add a hover effect for buttons */
		button:hover {
			opacity: 0.8;
		}

		/* Add styles to the submit button */
		.submitbtn {
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 100%;
			border-radius: 5px;
		}

		/* Add styles to the cancel button */
		.cancelbtn {
			background-color: #f44336;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 100%;
			border-radius: 5px;
		}

		 /* Add styles to the header */
		 .header {
			background-color: #333;
			color: #fff;
			padding: 20px;
			text-align: center;
			top:0;
		}

		/* Add styles to the footer */
		.footer {
			background-color: #333;
			color: #fff;
			
			text-align: center;
			position: absolute;
			bottom: 0;
			width: 100%;
		}

		/* Add styles to the form labels */
		label {
			display: inline-block;
			width: 150px;
			text-align: left;
		}

		/* Add styles to the background image */
		body {
			background-image: url("background.jpg");
			background-repeat: no-repeat;
			background-size: cover;
		}
	</style>
</head>
<body>
	<div class="header">
		<h1>Registration Page</h1>
	</div>

	<div class="container">
		<form action="r1.jsp" method="post">
			<label for="name"><b>Name</b></label>
			<input type="text" placeholder="Enter Name" name="name" required>

			<label for="password"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="password" required>

			<button type="submit" class="submitbtn">Register</button>
			<a href="index.jsp"><button type="button" class="cancelbtn">Cancel</button></a>
		</form>
	</div>

	<div class="footer">
		
		<p>This is the e-commerce website where you can buy the second hand product and also sells your's.</p>
	
	</div>

<%
String username = request.getParameter("name");
String password = request.getParameter("password");
if(username!=null && password!=null)
{
try {
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
	PreparedStatement ps = con.prepareStatement("INSERT INTO users(username, password) VALUES (?, ?)");
	ps.setString(1, username);
	ps.setString(2, password);
	 int k=ps.executeUpdate();
	con.close();
	if(k>=1)
	response.sendRedirect("login.jsp");
}
catch (Exception e)
{
	e.printStackTrace();
	 out.println("<html><body>");
     out.println("<h2>User name already Exist!!!!.</h2>");
     out.println("</body></html>");
}
}
%>