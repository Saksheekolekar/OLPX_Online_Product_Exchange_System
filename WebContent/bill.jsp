<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
	<title>Order Bill</title>
	<style type="text/css">
		table {
			border-collapse: collapse;
			width: 80%;
			margin: 20px auto;
		}

		th, td {
			border: 1px solid #ddd;
			padding: 10px;
			text-align: left;
		}

		th {
			background-color: #f2f2f2;
			font-weight: bold;
		}

		button {
			background-color: #007bff;
			color: #fff;
			border: none;
			padding: 10px 20px;
			border-radius: 3px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		button:hover {
			background-color: #0056b3;
		}
	</style>
</head>
<body>
	<h1>Order Bill</h1>
	<table>
		<tr>
			<th>Product Name</th>
			<th>Price</th>
			<th>Username</th>
		</tr>
		<%
			try {
				// Load the driver class
				Class.forName("org.postgresql.Driver");
				Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");

				// Retrieve the order from the orders table
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT product_name, price, username FROM orders ORDER BY id DESC LIMIT 1");

				// Display the order details in a table
				while(rs.next()) {
		%>
					<tr>
						<td><%= rs.getString("product_name") %></td>
						<td><%= rs.getString("price") %></td>
						<td><%= rs.getString("username") %></td>
					</tr>
		<%
				}

				// Close the connection
				con.close();

			} catch(Exception e) {
				e.printStackTrace();
				out.println("<p>An error occurred while generating the bill.</p>");
			}
		%>
	</table>
	<button>Pay</button>
</body>
</html>
