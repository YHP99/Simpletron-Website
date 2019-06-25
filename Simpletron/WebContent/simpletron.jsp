<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<!--
	Minimaxing by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Simpletron</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<style type="text/css">
	#add {
		width:500px;
	}
	#add input{
		margin : 5px auto auto 5px;
		width : 100px ;
	}
</style>

	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-12">

								<header id="header">
									<h1><a href="index.jsp" id="logo">Simpletron</a></h1>
									<nav id="nav">
										<a href="index.jsp">Main</a>
										<a href="simpletron.jsp" class="current-page-item">SimpleTron</a>
										<a href="BoardList.bo">QnA</a>
										<a href="guide.jsp">Guide</a>
									</nav>
								</header>

							</div>
						</div>
					</div>
				</div>
				
			<!-- Banner -->
				<div id="banner-wrapper">
					<div class="container">

						<div id="banner">
							<h2>Test your Simpletron!</h2>
							<span>
								Read the manual at the right
							</span>
						</div>

					</div>
				</div>

			<!-- Main -->
				<div id="main">
					<div class="container">
						<div class="row main-row">
						<div id="main_sim" class="col-8 col-12-medium">
							<img src="images/simpletron.JPG" alt="" class="left" style="margin-bottom:25px;"/>
							<div id='code' style="text-align: center;">
								<div id='title_code' style="color:#6e6e6e">Code</div>
								<textarea wrap='off'></textarea>
							</div>
							<div id='output' style="text-align: center;">
								<div id='title_console' style="color:#6e6e6e">Console</div>
							<textarea wrap='off' readonly>
<%
out.println("*** Welcome to Simpletron! ***");
out.println("*** Please enter your program one instruction ***");
out.println("*** (or data word) at a time. I will type the ***");
out.println("*** location number and a question mark (?) ***");
out.println("*** You then type the word for that location. ***");
out.println("*** your program ***");
%>

</textarea>
							</div>
							<br />
        					<button id='btn-load'>Load into memory</button>
        					<button id='btn-exec'>Execute</button>
        					<button id='btn-debug'>Debug</button>
        					<button id='btn-clear'>Clear console</button>
        
        					<div id='dump' style="text-align: center;">
            					<div id='title_dump' style="color:#6e6e6e">Memory Dump</div>
            					<textarea readonly"></textarea>
        					</div>
        
        					<script src='assets/js/simpletron.js'></script>
        				</div>
        					
        					<div class="col-4 col-12-medium">

								<section style="background-color:#F0FFF0; border:4px solid #E6FFE6;">
									<h2 style="font-size: 1.8em" align=center>Simpletron Manual</h2>
											<h3>Load into memory</h3>
											<p style="color:#6e6e6e; font-size: 1.1em">
											In the code window, the memory location you want and
											Create a 4-digit numeric code with a specific operation and address<br><br>
											ex) memory location: 4-digit numeric code<br>
											00: 2016<br>
											01: 3118<br>
											02: 4212<br>
											...........<br><br>
											After writing, click the Load into memory button to load the code into memory.<br>
											---------------------------------------------------------------------------------------------------
											</p>
											
											<h3>Execute</h3>
											<p style="color:#6e6e6e; font-size: 1.1em">
											Be sure to click the Load into memory button to load the code into memory and then execute it.<br><br>
											Button will execute all the code at once,
											and if you meet the Read operation, you can input the correct number for your code.<br>
											---------------------------------------------------------------------------------------------------
											</p>
											
											<h3>Debug</h3>
											<p style="color:#6e6e6e; font-size: 1.1em">
											As with Execute, you must click the Load into memory button to load the code into memory and debug it.<br><br>
											Allows you to debug and run the code line by line.<br>
											---------------------------------------------------------------------------------------------------
											</p>
											
											<h3>Clear console</h3>
											<p style="color:#6e6e6e; font-size: 1.1em">
											Initializes the console window.<br>
											</p>
											
								</section>

							</div>
						</div>
					</div>
				</div>

			<!-- Footer -->
				<div id="footer-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-12 col-12-medium" style="text-align: center;  margin-top:0;">

								<section>
									<h2>Simpletron</h2>
									<div>
										<div class="row">
										</div>
									</div>
								</section>

							</div>
						</div>
						<div class="row">
							<div class="col-12">

								<div id="copyright">
									&copy; Simpletron. All rights reserved. | made by Younghoon Park
								</div>

							</div>
						</div>
					</div>
				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>