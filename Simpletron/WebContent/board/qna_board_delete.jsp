<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
%>


<!DOCTYPE HTML>
<!--
	Minimaxing by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

	<head>
		<title>QnA</title>
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
										<a href="BoardList.bo" class="current-page-item">QnA</a>
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
							<h2>QnA</h2>
							<span>Ask questions about Simpleton and share your knowledge with others</span>
						</div>

					</div>
				</div>

			<!-- Main -->
				<div id="main">
					<form name="deleteForm" action="./BoardDeleteAction.bo?num=<%=num %>" 
					method="post">
						<div style="text-align:center;">
							<font size=3>삭제를 원하시면 해당 글의 비밀번호를 입력하세요.</font>
						</div>
						
						<div style="text-align:center; margin-top:15px;">
							<input name="BOARD_PASS" type="password">
						</div>
						
						<div style="text-align:center; margin-top:30px;">
							<a href="javascript:deleteForm.submit()">삭제</a>
							&nbsp;&nbsp;
							<a href="javascript:history.go(-1)">돌아가기</a>
						</div>
						
					</form>
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