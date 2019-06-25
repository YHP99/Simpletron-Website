<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="net.board.db.*" %>
<%
	BoardBean board = (BoardBean)request.getAttribute("boarddata");
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
		<script type="text/javascript">
		function modifyboard(){
			modifyform.submit();
		}
		</script>
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
					<form action="BoardModifyAction.bo" method="post" name="modifyform">
						<input type="hidden" name="BOARD_NUM" value=<%=board.getBOARD_NUM() %>>
						<table width=60% style="margin:auto; border: 2px solid #dddddd">
							<tr height="25" style="background-color: #eeeeee; text-align: center;">
								<th colspan="5" style="border: 1px solid #cccccc;">글 수정하기</th>
							</tr>	
							<tr style="border: 1px solid #cccccc;">
								<td height="16" style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">제 목</div>
								</td>
								<td>
									<input name="BOARD_SUBJECT" size="50" maxlength="100" 
										value="<%=board.getBOARD_SUBJECT()%>">
								</td>
							</tr>
							<tr style="border: 1px solid #cccccc;">
								<td id='middlediv' style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">내 용</div>
								</td>
								<td>
									<textarea name="BOARD_CONTENT" cols="67" rows="15"><%=board.getBOARD_CONTENT() %></textarea>
								</td>
							</tr>
							<%if(!(board.getBOARD_FILE()==null)){ %>
							<tr style="border: 1px solid #cccccc;">
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">파일 첨부</div>
								</td>
								<td>
									&nbsp;&nbsp;<%=board.getBOARD_FILE() %>
								</td>
							</tr>
							<%}else{ %>
							<tr style="border: 1px solid #cccccc;">
								<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">파일 첨부</div>
								</td>
								<td>
									<input name="BOARD_FILE" type="file"/>
								</td>
							</tr>
							<%} %>
							<tr>
								<td height="16" style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
									<div align="center">비밀번호</div>
								</td>
								<td>
									<input name="BOARD_PASS" type="password">
								</td>
							</tr>
							
						</table>
						<div style="text-align:center; margin-top:15px;">
							<font size=3>
								<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp;
								<a href="javascript:history.go(-1)">[뒤로]</a>&nbsp;&nbsp;
							</font>
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