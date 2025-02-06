<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Product Form</title>
	<style>
		body {
			background-image: url('background.jpg');
			background-size: cover;
			background-position: center center;
			font-family: Arial, sans-serif;
		}

		h1 {
			color: black;
			text-align: center;
			margin-top: 50px;
		}

		form {
			max-width: 600px;
			margin: 0 auto;
			background-color: rgba(255, 255, 255, 0.8);
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
		}

		label {
			display: block;
			font-size: 18px;
			font-weight: bold;
			margin-bottom: 10px;
		}

		input[type="text"] {
			font-size: 16px;
			padding: 10px;
			border-radius: 5px;
			border: none;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
			width: 100%;
			margin-bottom: 20px;
		}

		input[type="submit"] {
			font-size: 18px;
			font-weight: bold;
			padding: 10px 20px;
			border-radius: 5px;
			background-color: #3b7dd8;
			color: #fff;
			border: none;
			box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		input[type="submit"]:hover {
			background-color: #2c64af;
		}
	</style>
</head>
<body>
	<h1>Product Form</h1>
	<form action="productinfo.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" id="name"><br><br>
		<label for="description">Description:</label>
		<input type="text" name="description" id="description"><br><br>
		<label for="price">Price:</label>
		<input type="text" name="price" id="price"><br><br>
		<label for="contact">Contact:</label>
		<input type="text" name="contact" id="contact"><br><br>
		<label for="image">Image:</label>
		<input type="text" name="image" id="image"><br><br>
		<label for="user">user:</label>
		<input type="text" name="user" id="user"><br><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>
<%
		// Get the product information from the form
		String name = request.getParameter("name");
        String user = request.getParameter("user");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String contact = request.getParameter("contact");
		String image = request.getParameter("image");
		if(name!=null && description!=null && price!=null && contact!=null && image!=null && user!=null)
		{
		session.setAttribute("name", name);
		session.setAttribute("description", description);
		session.setAttribute("price", price);
		session.setAttribute("contact", contact);
		session.setAttribute("image", image);
		session.setAttribute("user", user);
		
		 response.sendRedirect("addProduct.jsp");
		}
	%>
	
	
