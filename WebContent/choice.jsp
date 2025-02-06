<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OLPX Product Exchange</title>
    <style>
        /* Add some decorative CSS to the buttons */
        .button2 {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 30px 50px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 24px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 25px;
            transition-duration: 0.3s;
        }

        /* Change the background color of the buttons on hover */
        .button2:hover {
            background-color: red;
        }
        
        .button1 {
            background-color: red; /* Green */
            border: black;
            color: white;
            padding: 30px 50px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 24px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 25px;
            transition-duration: 0.3s;
        }

        /* Change the background color of the buttons on hover */
        .button1:hover {
            background-color: #3e8e41;
        }

        /* Add some CSS for the header and footer */
        header, footer {
            background-color: #333;
            color: white;
            padding: 20px;
        }

        /* Add some CSS to center the buttons on the page */
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 60vh;
        }

        /* Add some CSS to set the background image */
        body {
           background-image: url("background.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Add some CSS for the page title */
        h1 {
            text-align: center;
            font-size: 48px;
            margin: 0;
        }

        /* Add some CSS for the page subtitle */
        h2 {
            text-align: center;
            font-size: 24px;
            margin-top: 0;
        }

        /* Add some CSS for the footer text */
        footer {
            text-align: center;
            font-size: 16px;
            margin-top: 20px;
        }
        .button-like {
  display: inline-block;
  padding: 10px 20px;
  border: 1px solid #ccc;
  background-color: #f5f5f5;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  border-radius: 5px;
  transition-duration: 0.3s;
}

.button-like:hover {
  background-color: black;
  border-color: white;
}
        
    </style>
</head>
<body>
    <header>
        <h1>Welcome <%= session.getAttribute("username") %> Select Your Roll! !</h1>
	   <h2>Buy and Sell Products with Ease.</h2>
	<a class="button-like" href="logout.jsp">Logout</a>
    </header>

    <div class="center">
        <form>
             <a class="button1" href="seller.jsp">Buyer</a>
              <a class="button2" href="productinfo.jsp">seller</a>
          </form>
    </div>

    <footer>
		<p>This is the e-commerce website where you can buy the second hand product and also sells your's.</p>
	</footer>
</body>
</html>
<%
session.setAttribute("u", session.getAttribute("username"));
%>