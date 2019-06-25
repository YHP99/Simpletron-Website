<!DOCTYPE HTML>
<!--
	Minimaxing by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Simpletron_help</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
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
										<a href="simpletron.jsp">SimpleTron</a>
										<a href="BoardList.bo">QnA</a>
										<a href="guide.jsp" class="current-page-item">Guide</a>
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
							<h2>About Simpletron</h2>
							<span>How Simpletron handles the opcode</span>
						</div>

					</div>
				</div>

			<!-- Main -->
				<div id="main">
					<div class="container">
						<div class="row main-row">
							<div class="col-12">
							
								<section>
									<h2 id="guide">"Simpletron is a small computer"</h2>
									<p style="font-size: 1.3em">
									You are to write programs for a computer called the Simpletron. The Simpletron runs programs written only in the language it understands, the Simpletron Machine Language (SML). 
									</p>
									
									<p style="font-size: 1.3em">
									The Simpletron contains one general-purpose register called the accumulator. All information in the Simpletron is handled in terms of words. A word is a signed four-digit decimal number such as +3364 or -0001. The Simpletron is equipped with a 100-word memory, and these words are referenced by their location numbers 00 - 99.
									</p>
									
									<p style="font-size: 1.3em">
									Before running an SML program, it must be loaded into memory. The first instruction of every SML program is always placed in location 00.
									</p>
									
									<p style="font-size: 1.3em">
									Each instruction occupies one word of memory. We shall assume that the sign of an SML instruction is always plus, but the sign of a data word may be either plus or minus. Each location in the Simpletron's memory may contain either an instruction, a data value used by the program, or an unused area of memory. The first two digits of each SML instruction are the op code, which specifies the operation to be performed. The last two digits of each instruction are the operand, which is the address of the memory location containing the word to which the operation applies. The opcodes are defined below: 
									</p>
									
									<img id="opcode_register" src="images/opcode.JPG" style="margin-top: 2.0em; margin-bottom: 4.5em" />
								</section>
								
								<section>
									<h2 id="guide">"Make SML programs"</h2>
									<p style="font-size: 1.3em; margin-bottom: 1.5em"> 
									Let us now consider two simple SML programs. The first program reads two numbers from the keyboard and prints the larger value.
									</p>
									
									<img src="images/example1.JPG" />
									<p style="font-size: 1.3em; margin-bottom: 2.0em">
									Example-1 reads two numbers from the keyboard and computes and prints their sum. The instruction +1007 reads the first number from the keyboard and places in into location 07 (which has been initialized to zero, see line 07). Then instruction +1008 reads the next number into location 08. The load instruction, +2007, puts the first number into the accumulator, and the add instruction, +3008, adds the second number to the number in the accumulator. All SML arithmetic instructions leave their results in the accumulator. The store instruction, +2109, places the result back into memory location 09 from which the write instruction, +1109, takes the number and prints it (as a signed four-digit decimal number). The halt instruction, +4300, terminates execution.
									</p>
									
									<img src="images/example2.JPG" />
									<p style="font-size: 1.3em">
									Example-2 reads two numbers from the keyboard and determines and prints the larger value. Note the use of the instruction +4107 as a conditional transfer of control, much the same as C's if statement. 
									</p>
									
									<p style="font-size: 1.5em; color:red; margin-top: 2.5em">
									Let's make SML programs for these requirements and test here <a href="simpletron.jsp">(SimpleTron)</a>
									</p>
									<img src="images/requirements.JPG" style="margin-top: -0.8em; margin-bottom: 0.5em"/>
								</section>
								
								<section>
									<h2 id="guide">"Make Simpletron"</h2>
									<p style="font-size: 1.3em;">
									If you have time to make Simpletron. I really recommand you to make Simpletron using java. It will help you understand more details about Simpletron processing. If you want to make, refer to this <a href="simpletron.pdf">pdf file</a> to make Simpletron.
									</p>
									
									<img id="opcode_register" src="images/register.JPG" style="margin-top: 2.0em" />
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