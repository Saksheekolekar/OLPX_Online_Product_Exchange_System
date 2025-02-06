<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
			color: #333;
			margin: 0;
			padding: 0;
		}
		
		.header {
			background-color: #333;
			color: #fff;
			text-align:center;
			padding: 10px;
		}
		
		.content {
			margin: 20px;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
			border-radius: 5px;
		}
		
		.table {
			border-collapse: collapse;
			width: 100%;
		}
		
		.table th, .table td {
			padding: 10px;
			border: 1px solid #ddd;
			text-align: left;
		}
		
		.table th {
			background-color: #f2f2f2;
			color: #333;
		}
		
		.table tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		
		.btn {
			display: inline-block;
			padding: 8px 16px;
			border-radius: 5px;
			background-color: #333;
			color: #fff;
			text-decoration: none;
			margin-right: 10px;
			transition: background-color 0.3s ease;
		}
		
		.btn:hover {
			background-color: #444;
		}
	</style>
</head>
<body>
    <div class="header">
    <h1 >Admin Page</h1>
    </div>
    <div class="content">
    <h2>Users Table</h2>
    <table  class="table" border=1>
        <tr>
            
            <th>User Name</th>
            <th>Password</th>
        </tr>
        <%
        // Establish database connection
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
        Statement stmt = conn.createStatement();
        
        // Retrieve data from users table
        ResultSet rs = stmt.executeQuery("SELECT * FROM users;");
        while(rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("username") %></td>
            <td><%= rs.getString("password") %></td>
        </tr>
        <%
        }
        rs.close();
        stmt.close();
        conn.close();
        %>
    </table>
    <div>
    <h2>Products Table</h2>
    <table class="table"  border=1>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Image</th>
            <th>Usename</th>
            <th>sellerContact</th>
        </tr>
        <%
        // Establish database connection
        Class.forName("org.postgresql.Driver");
        Connection conn2 = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
        Statement stmt2 = conn2.createStatement();
        
        // Retrieve data from products table
        ResultSet rs2 = stmt2.executeQuery("SELECT * FROM products;");
        while(rs2.next()) {
        %>
        <tr>
            <td><%= rs2.getInt("id") %></td>
            <td><%= rs2.getString("name") %></td>
            <td><%= rs2.getString("rate") %></td>
            <td><%= rs2.getString("description") %></td>
            <td><%= rs2.getString("image") %></td>
             <td><%= rs2.getString("username") %></td>
              <td><%= rs2.getString("seller_contact") %></td>
        </tr>
        <%
        }
        rs2.close();
        stmt2.close();
        conn2.close();
        %>
    </table>
    
    <h2>Orders Table</h2>
    <table class="table" border=1>
        <tr>
            <th>Order ID</th>
            <th>Product ID</th>
            <th>price</th>
            <th>username</th>
            <th>order_date</th>
        </tr>
        <%
        // Establish database connection
        Class.forName("org.postgresql.Driver");
        Connection conn3 = DriverManager.getConnection("jdbc:postgresql://localhost/olpx","postgres","root");
        Statement stmt3 = conn3.createStatement();
        
        // Retrieve data from orders table
          ResultSet rs3 = stmt3.executeQuery("SELECT * FROM orders;");
        while(rs3.next()) {
        %>
        <tr>
            <td><%= rs3.getInt("id") %></td>
            <td><%= rs3.getString("product_name") %></td>
            <td><%= rs3.getString("price") %></td>
             <td><%= rs3.getString("username") %></td>
              <td><%= rs3.getString("order_date") %></td>
        </tr>
        <%
        }
        rs2.close();
        stmt2.close();
        conn2.close();
        %>
