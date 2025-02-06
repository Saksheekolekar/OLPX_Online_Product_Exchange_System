<!DOCTYPE html>
<html>
<head>
	<title>Online Product Exchange System (olpx)</title>
	<style>
		* {
			box-sizing: border-box;
		}

		header {
			background-color: GRAY;
			color: BLACK;
			padding: 15px;
			text-align: center;
		}
		 footer {
			background-color: GRAY;
			color: BLACK;
			padding: 5px;
			text-align: center;
		}

		.main {
			display: flex;
			flex-direction: row;
			height: 500px;
			margin: 20px;
			
		}

		.side {
			flex: 1;
			background-color: #eee;
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
		}

		.buttons {
			display: flex;
			flex-direction: column;
			margin: 20px;
		}

		button {
			padding: 10px;
			margin: 10px;
			background-color: #333;
			color: white;
			border: none;
			cursor: pointer;
		}

		.images {
			flex: 7;
			background-color: #ccc;
			background-image: url("pack.jpg");
			background-size: cover;
			background-position: center;
			animation-name: change-image;
			animation-duration:5s;
			animation-iteration-count: infinite;
			animation-direction: alternate;
		}

		@keyframes change-image 
		{
			25% {background-image: url("pack.jpg");}
			75% {background-image: url("33.jpg");}
			100% {background-image: url("olpx.jpg");}
		}
	</style>
</head>
<body>
	<header>
		<h1>Online Product Exchange System (olpx)</h1>
	</header>
	<div class="main">
		<div class="side">
			<div class="buttons">
				<button onclick="window.location.href = 'adminlogin.jsp';"> Admin Login</button>
				<button onclick="window.location.href = 'r1.jsp';">User Registration</button>
				<button onclick="window.location.href = 'login.jsp';">User Login</button>
				<button onclick="window.location.href = 'about.jsp';">About Us</button>
			</div>
		</div>
		<div class="images"></div>
	</div>
	<footer>
		<p>This is the e-commerce website where you can buy the second hand product and also sells your's.</p>
	</footer>
</body>
</html>
