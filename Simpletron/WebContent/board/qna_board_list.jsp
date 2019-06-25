<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Minimaxing by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="net.board.db.*" %>

<%
	List boardList=(List)request.getAttribute("boardlist");
	int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
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
								<table width=60% style="margin:auto; text-align: center; border: 2px solid #dddddd">
										<%
										if(listcount > 0){
										%>
										<thead>
											<tr height="27" style="background-color: #eeeeee; text-align: center;">
												<th style="border: 1px solid #cccccc;">번호</th>
												<th style="border: 1px solid #cccccc;">제목</th>
												<th style="border: 1px solid #cccccc;">작성자</th>
												<th style="border: 1px solid #cccccc;">날짜</th>
												<th style="border: 1px solid #cccccc;">조회수</th>
											</tr>
										</thead>
											
											<%
												for(int i=0;i<boardList.size();i++){
													BoardBean bl=(BoardBean)boardList.get(i);
											%>
											<tr align="center" valign="middle" bordercolor="#333333"
												onmouseover="this.style.backgroundColor='F8F8F8'"
												onmouseout="this.style.backgroundColor=''">
												<td height="23" style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
													<%=bl.getBOARD_NUM()%>
												</td>
												
												<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
													<div align="left">
													<%if(bl.getBOARD_RE_LEV()!=0){ %>
														<%for(int a=0;a<=bl.getBOARD_RE_LEV()*2;a++){ %>
														&nbsp;
														<%} %>
														▶
													<%}else{ %>
														▶
													<%} %>
													<a href="./BoardDetailAction.bo?num=<%=bl.getBOARD_NUM()%>">
														<%=bl.getBOARD_SUBJECT()%>
													</a>
													</div>
												</td>
												
												<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
													<div align="center"><%=bl.getBOARD_NAME() %></div>
												</td>
												<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
													<div align="center"><%=bl.getBOARD_DATE() %></div>
												</td>	
												<td style="font-family:Tahoma; font-size:13pt; border: 1px solid #cccccc;">
													<div align="center"><%=bl.getBOARD_READCOUNT() %></div>
												</td>
											</tr>
											
											<%} %>
											<%
											}
											else
											{
											%>
											<tr align="center" valign="middle">
												<td colspan="4">QnA 게시판</td>
												<td align=right>
													<font size=2>등록된 글이 없습니다.</font>
												</td>
											</tr>
											<%
											}
											%>
										</table>
										<div style="font-family:Tahoma; font-size:13pt; text-align: center; margin-top: 15px;">
										<%if(nowpage<=1){ %>
													[이전]&nbsp;
													<%}else{ %>
													<a href="./BoardList.bo?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
													<%} %>
													
													<%for(int a=startpage;a<=endpage;a++){
														if(a==nowpage){%>
														[<%=a %>]
														<%}else{ %>
														<a href="./BoardList.bo?page=<%=a %>">[<%=a %>]</a>&nbsp;
														<%} %>
													<%} %>
													
													<%if(nowpage>=maxpage){ %>
													[다음]
													<%}else{ %>
													<a href="./BoardList.bo?page=<%=nowpage+1 %>">[다음]</a>
													<%} %>
										</div>
										<div style="text-align: right; margin-right: 20%;">
											<a href="./BoardWrite.bo">[글쓰기]</a>
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