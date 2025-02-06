<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Project Information</title>
    <style>
        /* Global styles */
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

/* Header styles */
header {
			background-color: GRAY;
			color: BLACK;
			padding: 15px;
			text-align: center;
        }
        

h1 {
    margin: 0;
    font-size: 36px;
    text-transform: uppercase;
    letter-spacing: 4px;
    text-shadow: 2px 2px #555;
    text-align: center;
}

/* Information section styles */
.info-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    background-color: #fff;
    padding: 20px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.info-section h2 {
    margin: 0 0 20px;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
}

.info-section p {
    margin: 0 0 20px;
    font-size: 18px;
    text-align: justify;
}

/* Developer section styles */
.dev-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: stretch;
    margin-bottom: 10px;
}

.dev-card {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    background-color:  #b3cccc;
    padding: 25px;
    margin: 25px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

.dev-card img {
    width: 150px;
    height: 150px;
    object-fit: cover;
    border-radius: 50%;
    margin-right: 25px;
}

.dev-card-info {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.dev-card h3 {
    margin: 0 0 10px;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
}

.dev-card p {
    margin: 0;
    font-size: 16px;
    text-align: center;
}

/* Footer styles */
footer {
    background-color: #ddd;
    color: #555;
    padding: 10px;
    text-align: center;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
}
.back-button {
			margin-top: 20px;
			padding: 10px;
			background-color: gray;
			border: 1px solid #001a00;
			border-radius: 4px;
			display: inline-block;
			text-decoration: none;
			color: white;
			font-weight: bold;
			cursor: pointer;
			transition: all 0.2s ease-in-out;
		}

		.back-button:hover {
			background-color: black;
			border-color: #001a00;
			color: white;
		}
    </style>
</head>
<body>
    <header>
        <h1>ONLINE PRODUCT EXCHANGE SYSTEM(olpx)</h1>
    </header>
    <div class="container">
        <div class="info-section">
            <h2>About the Project</h2>
 </header>
 
    <div class="container">
        <div class="info-section">
            <h2>Description</h2>
            <p>OLPX is an online platform that allows users to buy and sell various products.</p> 
            <p>  Users can create accounts and browse through a variety of categories to find products they are interested in.</p> 
              <p> Sellers can add their products to the platform, complete with pictures, descriptions, and prices.</p> 
             <p>   The platform offers a convenient and user-friendly way for buyers and sellers to connect and conduct transactions.</p> 
               <br>
               <h2> Developers :</h2>
        <div class="dev-section">
        
            <div class="dev-card">
                <img src="abot.jpg" alt="Developer 1">
                <div class="dev-info">
                    <h3>Sakshi Kolekar</h3>
                    <p>Front-end Developer</p>
                    <a href="mailto:sakshikolekar2003@gmail.com">My Email ID</a><br>
                 <a href="https://github.com/akpawar18">My Github ID</a>
                </div>
            </div>
            <div class="dev-card">
                <img src="abot.jpg" alt="Developer 2">
                <div class="dev-info">
                    <h3>Akshada Pawar</h3>
                    <p>Back-end Developer</p>
                    <a href="https:akshada.b.pawar@gmail.com">My Email ID</a><br>
                    <a href="https://github.com/akpawar18">My Github ID</a>
                     </div>
            </div>
        </div>
        <a href="index.jsp" class="back-button">Back</a>
    </div>
     </div>
     
</body>
</html>