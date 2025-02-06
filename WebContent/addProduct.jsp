<%@ page import="java.sql.*" %>

<%
String driver = "org.postgresql.Driver";
String url = "jdbc:postgresql://localhost/olpx";
String username = "postgres";
String password = "root";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
// Get the form data

String productName = (String)session.getAttribute("name");
String description =(String)session.getAttribute("description");
String price =(String)session.getAttribute("price");
String Contact = (String)session.getAttribute("contact");
String imageName =(String)session.getAttribute("image");
String userName = (String)session.getAttribute("user");

if(productName!=null && description!=null&& imageName!=null&& userName!=null)
{
try {
  // Connect to the database
    Class.forName(driver);
    conn = DriverManager.getConnection(url, username, password);

    // Insert the data into the database
    String sql = "INSERT INTO products (name, rate, description, image, username,seller_contact) VALUES (?, ?, ?, ?, ?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productName);
    pstmt.setString(2, price);
    pstmt.setString(3, description);
    pstmt.setString(4, imageName);
    pstmt.setString(5, userName);
    pstmt.setString(6, Contact);
     int k=pstmt.executeUpdate();
if(k>=1)
{
    out.println("<h2>Product added successfully!</h2>");
    response.sendRedirect("seller.jsp");
}
    
} catch (Exception e) {
    out.println("<h2>Error adding product: " + e.getMessage() + "</h2>");
} finally {
    try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
    try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
    try { if (conn != null) conn.close(); } catch (SQLException e) { /* ignored */ }

}
}
%>
