<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
 <%@ page import="java.io.*" %> 
 <!DOCTYPE html>
<html>
<head>
	<title>Products</title>
	<style type="text/css">
	h2
	{
	text-align: center;
	}
	h1 {
	color: black;
	text-align: center;
	padding: 20px;
}
		.container {
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: flex-start;
			margin: 20px;
		
		}

		.product {
			width: 300px;
			border: 1px solid #ddd;
			margin: 10px;
			padding: 10px;
			box-shadow: 0px 0px 5px #ddd;
			text-align: center;
			color: black;background-color: gray;
		}

		.product img {
			width: 100%;
			height: 200px;
			object-fit: cover;
		}

		.product h3 {
			font-size: 18px;
			margin-top: 10px;
			margin-bottom: 5px;
		}

		.product p {
			font-size: 14px;
			margin-top: 5px;
			margin-bottom: 10px;
			height: 70px;
			overflow: hidden;
			text-overflow: ellipsis;
		}

		.product button {
			background-color: #007bff;
			color: #fff;
			border: none;
			padding: 10px 20px;
			border-radius: 3px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		.product button:hover {
			background-color: #0056b3;
		}
		body {background-image: url("background.jpg");}
		
	</style>
</head>
<body>
	<h1>Online Product Exchange (olpx)</h1>
	<div class="container">
		<%
			try {
				// Load the driver class
				Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
	
				// Create a statement object
				Statement stmt = con.createStatement();

				// Execute the query and get the result set
				ResultSet rs = stmt.executeQuery("SELECT name, rate, description, image , username FROM products");

				// Loop through the result set and display the products
				while(rs.next()) {
		%>
					<div class="product">
						<img src="<%= rs.getString("image") %>" alt="<%= rs.getString("name") %>">
						<h3><%= rs.getString("name") %></h3>
						<p><%= rs.getString("description") %></p>
						<p><b>Price:</b> <%= rs.getString("rate") %></p>
						<form method="post" action="seller.jsp">
						<input type="hidden" name="product_name" value="<%= rs.getString("name") %>">
	                    <input type="hidden" name="price" value="<%= rs.getString("rate") %>">
                     	<input type="hidden" name="username" value="<%= rs.getString("username") %>">
	             
	                    <button type="submit" name="buy">Buy</button>
	                    <input type="checkbox" name="confirm" required>
	                    <label for="confirm">I confirm my order.</label>
	                    </form>
					</div>
		<%
				}

				// Close the connection
				con.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		%>
	</div>
</body>
</html>
<%
		String productName = request.getParameter("product_name");
		String price = request.getParameter("price");
		String username = request.getParameter("username");

		try {
			// Load the driver class
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");

			// Insert the order into the orders table
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO orders (product_name, price, username) VALUES (?, ?, ?)");
			pstmt.setString(1, productName);
			pstmt.setString(2, price);
			pstmt.setString(3, username);
			int k=pstmt.executeUpdate();

			// Close the connection
			if(k>=1)
			{
				 response.sendRedirect("bill.jsp");
				out.println("<p>Thank you for your order!</p>");
			}
			con.close();

			// Display the order confirmation
			
		} catch(Exception e) {
			e.printStackTrace();
			out.println("<h2>An error occurred while processing your order.</h2>");
		}
	%>
