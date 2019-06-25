<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
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
	<script language="javascript">
	function addboard(){
		boardform.submit();
	}
	</script>
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
					<h2 align="center" >QnA 게시판</h2>
					<form action="./BoardAddAction.bo" method="post" 
							enctype="multipart/form-data" name="boardform">
						<table width=60% style="margin:auto; border: 2px solid #dddddd">
							<tr height="25" style="background-color: #eeeeee; text-align: center;">
								<th colspan="5" style="border: 1px solid #cccccc;">글쓰기</th>
							</tr>
							<tr style="border: 1px solid #cccccc;">
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;" height="16">
									<div align="center">글쓴이</div>
								</td>
								<td>
									<input name="BOARD_NAME" type="text" size="10" maxlength="10" 
										value=""/>
								</td>
							</tr>
							<tr style="border: 1px solid #cccccc;">
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;" height="16">
									<div align="center">비밀번호</div>
								</td>
								<td>
									<input name="BOARD_PASS" type="password" size="10" maxlength="10" 
										value=""/>
								</td>
							</tr>
							<tr style="border: 1px solid #cccccc;">
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;" height="16">
									<div align="center">제 목</div>
								</td>
								<td>
									<input name="BOARD_SUBJECT" type="text" size="50" maxlength="100" 
										value=""/>
								</td>
							</tr>
							<tr style="border: 1px solid #cccccc;">
								<td id='middlediv' style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">내 용</div>
								</td>
								<td>
									<textarea name="BOARD_CONTENT" cols="67" rows="15"></textarea>
								</td>
							</tr>
							<tr>
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">파일 첨부</div>
								</td>
								<td>
									<input name="BOARD_FILE" type="file"/>
								</td>
							</tr>
						</table>
						</form>
						<div style="text-align:center; margin-top:15px;">
							<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
							<a href="javascript:history.go(-1)">[뒤로]</a>
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