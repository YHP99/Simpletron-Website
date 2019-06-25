<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Minimaxing by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<%@ page import="net.board.db.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
%>

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
					<h2 align="center" >QnA 게시판</h2>
					<table width=60% style="margin:auto; border: 2px solid #dddddd">
						<thead>
							<tr height="25" style="background-color: #eeeeee; text-align: center;">
								<th style="border: 1px solid #cccccc;">제목</th>
								<th style="text-align: left;"><%=board.getBOARD_SUBJECT()%></th>
							</tr>
						</thead>
						
						<tr style="border: 1px solid #cccccc;">
							<td id='middlediv' style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
								<div align="center">내 용</div>
							</td>
							<td style="font-family:Tahoma; font-size:13pt;">
								<table border=0 width=490 height=250 style="table-layout:fixed">
									<tr>
										<td id='middlediv' valign=top style="font-family:Tahoma; font-size:13pt;">
										<%=board.getBOARD_CONTENT() %>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
								<div align="center">첨부파일</div>
							</td>
							<td style="font-family:Tahoma; font-size:13pt;">
							<%if(!(board.getBOARD_FILE()==null)){ %>
							<a href="./boardupload/<%=board.getBOARD_FILE()%>">
								<%=board.getBOARD_FILE() %>
							</a>
							<%} %>
							</td>
						</tr>
						
					</table>
						<div style="text-align:center; margin-top:15px;">
							<font size=3>
								<a href="./BoardReplyView.bo?num=<%=board.getBOARD_NUM() %>">
								[답변]
								</a>&nbsp;&nbsp;
								<a href="./BoardModify.bo?num=<%=board.getBOARD_NUM() %>">
								[수정]
								</a>&nbsp;&nbsp;
								<a href="./BoardDelete.bo?num=<%=board.getBOARD_NUM() %>">
								[삭제]
								</a>&nbsp;&nbsp;
								<a href="./BoardList.bo">[목록]</a>&nbsp;&nbsp;
							</font>
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