<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<!DOCTYPE html>
<html id="snsboardList">
<head>

<!-- Main content -->
<style>
#listTr {
	font-size: 20px;
	font-weight: bold;
}

#notice1:hover {
	color: coral;
}

#qna1 {
	position: relative;
	left: 20px;
}

#qna1:hover {
	color: coral;
}

#noticeTab {
	font-size: 20px;
	font-weight: bold;
}
</style>

<!-- sns css -->
<style type="text/css">
#myContainer {
	margin-top: 100px;
	width: 600px;
}

div.fp-slidesContainer {
	height: 600px;
	background-color: #fab4fa;
}

div.fp-slidesNav.fp-bottom ul {
	color: #ffffff;
}

#bodybaby {
	background: #F2F2F2;
	overflow: auto;
}

div.box-header.with-border {
	background-color: #ffffff;
}

#fp-nav ul li a.active span, .fp-slidesNav ul li a.active span, #fp-nav ul li:hover a.active span,
	.fp-slidesNav ul li:hover a.active span {
	background-color: white;
	height: 12px;
	width: 12px;
	margin: -6px 0 0 -6px;
	border-radius: 100%;
}

#propilePhoto {
	width: 40px;
	height: 40px;
	object-fit: cover;
	border-radius: 50%;
}

div.button.active {
	width: 40px;
	height: 30px;
}

#heart {
	position: relative;
	top: 45px;
	left: 50px;
	margin-bottom: 50px;
}

button.glyphicon.glyphicon-comment {
	position: relative;
	left: 50px;
	bottom: 20px;
	font-size: 32px;
	color: #737373;
}

div.button.active {
	width: 40px;
	height: 40px;
}

div.button {
	width: 40px;
	height: 40px;
}

#boxbody1 {
	background-color: #ffffff;
	height: auto;
}

#writerform {
	position: relative;
	right: 270px;
	width: 100px;
	padding-left: 30px;
}

#contentform {
	width: 500px;
	position: relative;
	bottom: 38px;
	left: 40px;
	padding-left: 30px;
}

#replybtn7 {
	background-color: #ffffff;
	border: 0px;
}

#boxbody_main {
	background-color: #e0e0e0;
}

#snsboardList {
	background-color: #f2f2f2;
}
</style>
<link rel="stylesheet" type="text/css"
	href="../resources/css/loading.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/fullPage.js-master/fullPage.js-master/src/fullpage.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/fullPage.js-master/fullPage.js-master/examples/examples.css" />
<link rel="stylesheet" href="/resources/css/heartbutton.css">

<!-- imageSlider.css -->
<link rel="stylesheet" href="/resources/css/imageSlider.css">
<!-- imageSlider.css 끝 -->

<!-- sns css 끝 -->

<!-- video.js -->
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet" />

<script src="http://vjs.zencdn.net/c/video.js"></script>
<!--  video.js 끝 -->

<!-- readPage.css -->
<!-- 이미지 보여주기 css -->
<style type="text/css">
.popup {
	position: absolute;
}

.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}

.front {
	z-index: 1110;
	opacity: 1;
	border: 1px;
	margin: auto;
}

.show {
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}

#replyModBtn {
	bottom: 10px;
	position: relative;
}

div.box.box-primary {
	height: auto;
}

div.form-group {
	margin-bottom: 70px;
}

div.form-group label {
	position: relative;
	bottom: 20px;
	font-weight: bold;
}

input.form-control {
	position: relative;
	bottom: 20px;
}

textarea.form-control {
	position: relative;
	bottom: 20px;
}

button.btn.btn-info {
	position: relative;
	top: 0.5px;
}

div.box-header.with-border {
	height: 60px;
}

#writerform {
	position: relative;
	top: 20px;
}

#contentform {
	position: relative;
	bottom: 87px;
}

input.form-control {
	position: relative;
	top: 2px;
}

.replyLi {
	display: none;
}

div.form-group label {
    font-size: 20px;
}

label.excerpt {
    position: relative;
    right: 30px;
    font-weight: normal;
}

label.excerpt2 {
    position: relative;
    right: 30px;
    font-weight: normal;
}


h3.timeline-header {
    margin-bottom: 6px;
}

div.slide img {
    height: 600px;
}

div.slide {
    height: 600px;
}

ul.slides {
    height: 600px;
}
.boxbody_footer {
    position: relative;
    bottom: 170px;
}
div.col-md-12 {
    bottom: 50px;
}

.loadClass {
    position: relative;
    bottom: 10px;
    font-size: 15px;
}

.loadClass:hover {
    color: lightblue;
}

.box.box-success{
 border-top-color: F08080;   
}

#likeform label strong {
    font-weight: bold;
    font-size: 15px;
}

</style>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<!-- readPage.css 끝 -->
</head>

<body>

	<section class="content" id="boardList8"
		style="background-color: #F2F2F2;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class='box'>

					<div class="box-header with-border">
						<h2 class="box-title">SNS BOARD</h2>
					</div>
					<div class='box-body'>
						<select name="searchType">
							<option value="n">
								<c:out value="${cri.searchType == null ?'selected' : ''}" />
								---
							</option>
							<option value="t">
								<c:out value="${cri.searchType eq 't' ?'selected' : ''}" />
								Title
							</option>
							<option value="c">
								<c:out value="${cri.searchType eq 'c' ?'selected' : ''}" />
								Content
							</option>
							<option value="w">
								<c:out value="${cri.searchType eq 'w' ?'selected' : ''}" />
								Writer
							</option>
							<option value="tc">
								<c:out value="${cri.searchType eq 'tc' ?'selected' : ''}" />
								Title or Content
							</option>
							<option value="cw">
								<c:out value="${cri.searchType eq 'cw' ?'selected' : ''}" />
								Content or Writer
							</option>
							<option value="tcw">
								<c:out value="${cri.searchType eq 'tcw' ?'selected' : ''}" />
								Title or Content or Writer
							</option>
						</select> <input type="text" name="keyword" id="keywordInput"
							value='${cri.keyword}'>
						<button id="searchBtn" class="btn btn-default">Search</button>
						<button id='newBtn' class="btn btn-warning">New Board</button>
					</div>
				</div>
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">LIST PAGING</h3>
					</div>
					<div class="box-body" id="boxbody_main">
						<!-- 게시판 보드 -->

						<!-- sns 게시판 -->
						<div id="eokContainer" align="center">
							<div id="myContainer">

								<c:forEach items="${list}" var="snsBoardVO">

									<!-- 프로필 사진 -->
									<div class="box-header with-border" align="left">
										<img src="/resources/image/image1.jpg" id="propilePhoto" />&nbsp;&nbsp;
										<h3 class="box-title" style="font-size: 20px;">${snsBoardVO.writer}</h3>
									</div>
									<!-- 프로필 사진 -->

									<!-- 사진 나오는곳 -->
									<ul class="slides">

										<li class="uploadedList${snsBoardVO.bno}" />
										<li class="nav-dots"><label
											class="uploadedListLabel${snsBoardVO.bno}"></label></li>
									</ul>
									<!-- 사진 나오는곳 끝 -->
									
									<c:if test="${not empty login}">
									<!-- 하트, 대화상자 -->

									<div class="box-header with-border" align="left"
										id="likechatbox${snsBoardVO.bno}">
										<div id='heart' class='button' style="height: 40px;" onclick="like_func(${snsBoardVO.bno})"></div>
										<button class="glyphicon glyphicon-comment btn-lg"
											onclick="newReplyText${snsBoardVO.bno}.focus();"
											id="replybtn7"></button>
									</div>
									<!-- 하트, 대화상자 -->
									</c:if>

									<!-- 글상자, 댓글상자  -->
									<div class="box-body" id="boxbody1">
										<div class="" id="likeform" align="left">
											<label for="exampleInputEmail1"><strong>좋아요&nbsp;<span id="heartCount${snsBoardVO.bno}">${snsBoardVO.likecnt}</span>개</strong></label>
										</div>
										<div class="form-group" id="writerform" align="left">
											<label for="exampleInputEmail1"><strong>${snsBoardVO.writer}</strong></label>
										</div>
										<div class="form-group" id="contentform" align="left" >
											<label for="exampleInputPassword1" class="excerpt">${snsBoardVO.content}</label>
										</div>
										<div class="boxbody_footer" align="left">
										<a href="#blue" class="loadClass" id="load${snsBoardVO.bno}"
											onclick="loadRepl(${snsBoardVO.bno})">Load More</a>
										<!-- The time line -->
										<ul id="timelineUl" class="timeline${snsBoardVO.bno}" >
											<!-- timeline time label -->
											<li id="repliesDiv${snsBoardVO.bno}"></li>
										</ul>
										</div>
									</div>
									<!-- 글상자, 댓글상자  -->

									<!-- 댓글 달기 -->
									<div class="row">
										<div class="col-md-12">
											<div class="box box-success">
												<c:if test="${not empty login}">
													<div class="box-body">
														<input class="form-control" type="text"
															placeholder="댓글 달기....."
															id="newReplyText${snsBoardVO.bno}"
															onkeyup="enterkeyUp(${snsBoardVO.bno})">
													</div>
													<!-- /.box body -->
												<%-- 	<div class="box-footer">
														<button type="submit" class="btn btn-primary"
															id="replyAddBtn${snsBoardVO.bno}">ADD REPLY</button>
													</div> --%>
												</c:if>
												<c:if test="${empty login}">
													<div class="box-body">
														<div>
															<a href="javascript:goLogin();">Login Please</a>
														</div>
													</div>
												</c:if>

											</div>
										</div>
									</div>
									<!-- 댓글 달기 -->


									<!-- Modal -->

									<div id="modifyModal${snsBoardVO.bno}" class="modal modal-primary fade"
										role="dialog">
										<div class="modal-dialog">
											<!-- Modal content -->
											<div class="modal-content" >
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title"></h4>
												</div>
												<div class="modal-body" data-rno>
													<p>
														<input type="text" id="replytext${snsBoardVO.bno}"
															class="form-control">
													</p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-info" id="replyModBtn"
														data-dismiss="modal">Modify</button>
													<button type="button" class="btn btn-danger"
														id="replyDelBtn" data-dismiss="modal">Delete</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>

									<!-- Modal end -->
									<br>
									<br>
									<br>
								</c:forEach>

							</div>
						</div>

						<!-- sns 게시판 끝 -->
				
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
		
	</section>
	<!-- /.content -->




	<form id="jobForm">
		<input type='hidden' name="page" value="${pageMaker.cri.page}">
		<input type='hidden' name="perPageNum"
			value="${pageMaker.cri.perPageNum}">
	</form>



	<!-- 로그인 아이디 체크 -->
	<script type="text/javascript">
		var loginId = "${login.uid}";
	</script>
	<!-- 로그인 아이디 체크 -->

	<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}	
	</script>

	<script>
	$(document).ready(
			function() {
				
				$('#searchBtn').on("click", function(evt) {
					self.location = "/snsboard/listPage"
						+ '${pageMaker.makeQuery(1)}'
						+ '&searchType='
						+$("select option:selected").val()
						+ "&keyword=" + $('#keywordInput').val();
				});	
				
				$('#newBtn').on("click", function(evt) {

					self.location = "/snsboard/register";

				});

			});
	</script>
	<script>
	
	$(function() {
		$('ul.tab li').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
		})
	});


	</script>

	<script type="text/javascript">
    $(document).ready(function() {
      $("#sidebar").mCustomScrollbar({
        theme: "minimal"
      });

      $('#dismiss, .overlay').on('click', function() {
        // hide sidebar
        $('#sidebar').removeClass('active');
        // hide overlay
        $('.overlay').removeClass('active');
      });

      $('#sidebarCollapse').on('click', function() {
        // open sidebar
        $('#sidebar').addClass('active');
        // fade in the overlay
        $('.overlay').addClass('active');
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
      });
    });
  </script>

	<!-- readPage.js -->


	<!-- 첨부파일 템플릿 -->

	<script id="templateAttach" type="text/x-handlebars-template">
		<input type="radio" name="radio-btn-{{bNo}}" id="bno-{{bNo}}img-{{photoNum}}" {{checked}}/>
			<li class="slide-container">
				<div class="slide">
					<img src="{{imgsrc}}"/>
				</div>
				<div class="nav">
					<label for="bno-{{bNo}}img-{{prevNum}}" class="prev">&#x2039;</label>
					<label for="bno-{{bNo}}img-{{nextNum}}" class="next">&#x203a;</label>
				</div>
			</li>
	</script>
	
	<script id="templateAttach2" type="text/x-handlebars-template">
			<label for="bno-{{bNo}}img-{{photoNum}}" class="nav-dot" id="bno-dot-{{bNo}}img-dot-{{photoNum}}"></label>
	</script>


	<script type="text/javascript">
		function checkImageType(fileName) {
			
			var pattern = /jpg|gif|png|jpeg/i;
			
			return fileName.match(pattern);
		}
		
		function getFileInfo(fullName, i, bno) {
		
			var fileName, imgsrc, getLink, photoNum, bNo;
			
			var fileLink;
			
			var checked;
			
			if(checkImageType(fullName)){
				imgsrc = "/displayFile?fileName="+fullName;
				fileLink = fullName.substr(14);
				
				var front = fullName.substr(0,12); // /2015/00/00/
				var end = fullName.substr(14);
				
				getLink = "/displayFile?fileName="+front+end;
			}else{
				imgsrc = "../resources/dist/img/file.png";
				fileLink = fullName.substr(12);
				getLink = "/displayFile?fileName="+fullName;
			}
			fileName = fileLink.substr(fileLink.indexOf("_")+1);
		
			prevNum = String(i-1);
			
			photoNum = String(i);
		
			nextNum = String(i+1);
			
			bNo = String(bno);
			
			if(photoNum == 1){
				checked = "checked";
			}else{
				checked = "";
			}
			
			return {fileName:fileName, imgsrc:imgsrc, getLink:getLink, fullName:fullName, photoNum:photoNum, prevNum:prevNum, nextNum:nextNum, bNo:bNo, checked:checked};
		}
	</script>


	<!--댓글 템플릿 코드 -->
	<script id="template" type="text/x-handlebars-template">
	{{#each .}}
	<li class="replyLi" data-rno={{rno}}>
			<div class="timeline-item" align="left">
				<h3 class="timeline-header">
					<strong>{{replyer}}</strong> - {{replytext}}
				</h3>
			</div>
	</li>
	{{/each}}	
	</script>
	<!--댓글 템플릿 코드 -->

	<!-- 무한 스크롤 템플릿 코드 -->

	<script id="templateAttach3" type="text/x-handlebars-template">
	<div class="box-header with-border" align="left">
										<img src="/resources/image/image1.jpg" id="propilePhoto"/>&nbsp;&nbsp;
										<h3 class="box-title" style="font-size: 20px;">{{Writer}}</h3>
									</div>
									<!-- 사진 나오는곳 -->
									<ul class="slides">
									
											 <li class="uploadedList{{Bno}}"/>
											  <li class="nav-dots">
											     <label class="uploadedListLabel{{Bno}}"></label>
											  </li>
									</ul>
									<!-- 사진 나오는곳 끝 -->
									<c:if test="${not empty login}">
									<div class="box-header with-border" align="left" id="likechatbox{{Bno}}">
										<div id="heart" class="button" style="height: 40px;" onclick="like_func2({{Bno}})"></div>
						  				<button class="glyphicon glyphicon-comment btn-lg" onclick="newReplyText{{Bno}}.focus();" id="replybtn7"></button>
									</div>
									</c:if>
									<div class="box-body" id="boxbody1">
										<div class="" id="likeform" align="left">
											<label for="exampleInputEmail1"><strong>좋아요 {{Likecnt}}개</strong></label>
										</div>
										<div class="form-group" id="writerform" align="left">
											<label for="exampleInputEmail1">{{Writer}}</label>
										</div>
										<div class="form-group" id="contentform" align="left">
											<label for="exampleInputPassword1" class="excerpt2" >{{Content}}</label>
										</div>
										<div class="boxbody_footer" align="left">										
										<a href="#blue" class="loadClass" id="load{{Bno}}" onclick="loadRepl({{Bno}})">Load More</a>
										<!-- The time line -->
										<ul class="timeline{{Bno}}" id="timelineUl2">
											<!-- timeline time label -->
											<li id="repliesDiv{{Bno}}" onclick="showRepl({{Bno}})">
											</li>
										</ul>
										</div>
									</div>
									
									<div class="row">
										<div class="col-md-12" id="rowDiv">
											<div class="box box-success">
												<c:if test="${not empty login}">
												<div class="box-body">
													<input class="form-control" type="text" placeholder="댓글 달기....." id="newReplyText{{Bno}}" onkeyup="enterkeyUp({{Bno}})" >
												</div>
												<!-- /.box body -->
												<%--
												<div class="box-footer">
													<button type='submit' class='btn btn-primary' id='replyAddBtn{{Bno}}' onclick="repADD({{Bno}})" >ADD REPLY</button>
												</div>
												--%>
												</c:if>
												<c:if test="${empty login}">
													<div class="box-body">
														<div><a href="javascript:goLogin();">Login Please</a></div>
													</div>
												</c:if>
												
											</div>
										</div>
									</div>

									<!-- Modal -->
									
									<div id="modifyModal" class="modal modal-primary fade" role="dialog">
										<div class="modal-dialog">
											<!-- Modal content -->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title"></h4>
												</div>
												<div class="modal-body" data-rno>
													<p><input type="text" id="replytext{{Bno}}" class="form-control"></p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-info" id="replyModBtn" data-dismiss="modal">Modify</button>
													<button type="button" class="btn btn-danger" id="replyDelBtn" data-dismiss="modal">Delete</button>
													<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
									
									<!-- Modal end -->
									
									<br>
									<br>
									<br>

	</script>

	<!-- 무한 스크롤 템플릿 코드 -->

	<script type="text/javascript">
	function heartBeat(bNo) {
		if($("#likechatbox"+bNo+"> .button").hasClass('active')){
			$("#likechatbox"+bNo+"> .button").removeClass('active');
		}else{
		  	$("#likechatbox"+bNo+"> .button").addClass('active');
		}
	}
	</script>


	<!-- 버튼 이벤트 처리 -->
	<script type="text/javascript">
	
		$(document).ready(function() {
			var formObj = $("form[role='form']");
			
			console.log(formObj);
			
			$("#modifyBtn").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/snsboard/modifyPage");
				formObj.submit();
			});
			
			$("#deleteBtn").on("click", function() {
				
				var replyCnt = $("#replycntSmall").html();
				
				if(replyCnt > 0){
					alert("댓글이 달린 게시물을 삭제할 수 없습니다.");
					return;
				}
				
				var arr = [];
				$(".uploadedList${snsBoardVO.bno} li").each(function (index) {
					arr.push($(this).attr("data-src"));
				});
				
				if(arr.length > 0){
					$.post("/deleteAllFiles", {files:arr}, function() {
						
					});
				}
				formObj.attr("method", "post");
				formObj.attr("action", "/snsboard/removePage");
				formObj.submit();
			});
	
			$("#listBtn").on("click", function() {
				formObj.attr("method", "get");
				formObj.attr("action", "/snsboard/listPage");
				formObj.submit();
			});
			
		});
	
		var idx = 0;		
	</script>
	<c:forEach items="${list}" var="snsBoardVO" step="1">

		<!-- prettifyDate 기능 구현 -->
		<script type="text/javascript">
		var bno = ${snsBoardVO.bno};
		var countList = "${listCount}";	//게시글 총갯수
	
		var bnoList = new Array();
		bnoList[idx++] = bno;
		
		Handlebars.registerHelper("prettifyDate", function(timeValue) {
			var dateObj = new Date(timeValue);
			var year = dateObj.getFullYear();
			var month = dateObj.getMonth() + 1;
			var date = dateObj.getDate();
			return year+"/"+month+"/"+date;
		});

		var printData = function (replyArr, target, templateObject, bNo) {
			var template = Handlebars.compile(templateObject.html());
			
			var html = template(replyArr);
			target.after(html);
			$(".timeline"+bNo).find("li").slice(0, 4).show(); // select the first ten
		}
	
		var printData3 = function (replyArr, target, templateObject, bNo) {
			var template = Handlebars.compile(templateObject.html());
			$(".timeline"+bNo).find(".replyLi:hidden").remove();
			$(".timeline"+bNo).find(".replyLi").remove();
			var html = template(replyArr);
			target.after(html);
			$(".timeline"+bNo).find("li").show(); // select the first ten
		}
		
		var replyPage = 1;
		
		// 댓글 목록, 페이지 가져오기
		function getPage(pageInfo, bno) {
			var bNo = bno;
			$.getJSON(pageInfo, function(data) {
				printData(data.list, $("#repliesDiv"+bNo), $('#template'), bNo);
				
				$("#modifyModal"+bNo).modal('hide');
				$("#replycntSmall").html("[ "+ data.pageMaker.totalCount +" ]");
			});
			
		}
		
		function getPage3(pageInfo, bno) {
			var bNo = bno;
			$.getJSON(pageInfo, function(data) {
				printData3(data.list, $("#repliesDiv"+bNo), $('#template'), bNo);
				
				$("#modifyModal"+bNo).modal('hide');
				$("#replycntSmall").html("[ "+ data.pageMaker.totalCount +" ]");
			});
		}
		
		// 전체 댓글 목록 띄우기
		getPage("/snsreplies/" + bno + "/1", bno);
		// 전체 댓글 목록 띄우기

		// 템플릿 코드 안에 댓글 목록 가져오기
		function showRepl(bno) {
			$.getJSON("/snsreplies/" + bno + "/1", function(data) {
				printData(data.list, $("#repliesDiv"+bno), $('#template'));
				
				$("#modifyModal"+bno).modal('hide');
			});
		}
		// 템플릿 코드 안에 댓글 목록 가져오기

		// 페이지 출력
		var printPaging = function (pageMaker, target) {
			var str = "";
			
			if(pageMaker.prev){
				str += "<li><a href='"+(pageMaker.startPage-1)+"'> << </a></li>";
			}
			
			for(var i=pageMaker.startPage, len = pageMaker.endPage; i <= len; i++){
				var strClass = pageMaker.cri.page == i?'class=active':'';
				str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
			}
			
			if(pageMaker.next){
				str += "<li><a href='"+(pageMaker.endPage + 1)+"'> >> </a></li>";
			}
			
			target.html(str);
		};
		// Replies List 눌렀을 때 이벤트 처리
		$("#repliesDiv${snsBoardVO.bno}").on("click", function() {
			getPage("/snsreplies/" + bno + "/1", bno);
		});
		
		// 페이지 버튼 눌렀을때 이벤트 처리
		$(".pagination").on("click", "li a", function (event) {
			
			event.preventDefault();
			
			replyPage = $(this).attr("href");
			
			getPage("/snsreplies/"+bno+"/"+replyPage, bno);
		});
		

		// 각 댓글의 버튼 이벤트 처리
		$(".timeline").on("click", ".replyLi", function (event) {
			
			var reply = $(this);
			
			$("#replytext").val(reply.find('.timeline-body').text());
			$(".modal-title").html(reply.attr("data-rno"));
			
		});
		
		// 댓글 수정 버튼 이벤트 처리
			$("#replyModBtn").on("click", function () {
			
			var Bno = bno;
			var rno	= $(".modal-title").html();
			var replytext = $("#replytext"+Bno).val();
			
			$.ajax({
				type : 'put',
				url : '/snsreplies/'+rno,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "PUT"
					},
					data:JSON.stringify({replytext:replytext}),
					dataType : 'text',
					success : function (result) {
						console.log("result :"+result);
						if(result == 'SUCCESS'){
							alert("수정 되었습니다.");
							getPage("/snsreplies/"+bno+"/"+replyPage, bno);
						}
					}
			});
		});
		
		// 댓글 삭제 버튼 이벤트 처리
			$("#replyDelBtn").on("click", function () {
			
			var Bno = bno;
			var rno	= $(".modal-title").html();
			var replytext = $("#replytext"+Bno).val();
			
			$.ajax({
				type : 'delete',
				url : '/snsreplies/'+rno,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "DELETE"
					},
					dataType : 'text',
					success : function (result) {
						console.log("result :"+result);
						if(result == 'SUCCESS'){
							alert("삭제 되었습니다.");
							getPage("/snsreplies/"+bno+"/"+replyPage, bno);
						}
					}
			});
		});
		
		// 첨부파일 데이터전송
	
		var template = Handlebars.compile($("#templateAttach").html());
		var template2 = Handlebars.compile($("#templateAttach2").html());
		
		$.ajax({
			type:"POST",
			url: "/snsboard/getAttach/"+bno,
			dataType: "json",
			success: function (data) {
				var i = 1;
				$(data).each(function () {
					var fileInfo = getFileInfo(this, i, bno);
					var html = template(fileInfo);
					var html2 = template2(fileInfo);
					$(".uploadedList${snsBoardVO.bno}").append(html);
					$(".uploadedListLabel${snsBoardVO.bno}").append(html2);
					i++;
					if(i>data.length){
						bno++;
					}
				}
				);
			
			}
			
		})
		
		// 이미지 보여주기
		$(".uploadedList${snsBoardVO.bno}").on("click", ".mailbox-attachment-info a" , function (event) {
		
			var fileLink = $(this).attr("href");
			
			if(checkImageType(fileLink)){
				event.preventDefault();
				
				var imgTag = $("#popup_img");
				imgTag.attr("src", fileLink);
				
				console.log(imgTag.attr("src"));
				
				$(".popup").show('slow');
				imgTag.addClass("show");
			}
		});
		
		$("#popup_img").on("click", function () {
			$(".popup").hide('slow');
		});
		
		// 로그인 페이지 보내기
		
		function goLogin() {
			location.href = "../user/login";
		}
		
		// 댓글 작성자만이 수정 가능 
		Handlebars.registerHelper("eqReplyer", function (replyer, block) {
			var accum = '';
			if (replyer == '${login.uid}'){
				accum += block.fn();
			}
			return accum;
		});
		
		//엔터키 눌렀을때 추가버튼 작동시키기
		function replyadd2(bno) {
			var bNo =bno;
			var replyerObj = loginId;
			var replytextObj = $("#newReplyText"+bNo);
			var replyer	= replyerObj;
			var replytext = replytextObj.val();
			$.ajax({
				type : 'post',
				url : '/snsreplies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "POST"
					},
					dataType : 'text',
					data: JSON.stringify({bno:bNo, replyer:replyer, replytext:replytext}),
					success : function (result) {
						console.log("result :"+result);
						if(result == 'SUCCESS'){
							alert("등록 되었습니다.");
							replyPage = 1;
							getPage3("/snsreplies/"+bNo+"/"+replyPage, bNo);
							replytextObj.val("");
						}
					}
			});
		}
		
		function enterkeyUp(bno) {
			if(window.event.keyCode == 13){
				replyadd2(bno);
			}
		}
		
		//엔터키 눌렀을때 추가버튼 작동시키기
		
		// 댓글 추가 버튼 이벤트 처리
		$("#replyAddBtn${snsBoardVO.bno}").on("click", function () {
			var bNo = "${snsBoardVO.bno}";
			var bNoList = bnoList;
			var replyerObj = loginId;
			var replytextObj = $("#newReplyText${snsBoardVO.bno}");
			var replyer	= replyerObj;
			var replytext = replytextObj.val();
			$.ajax({
				type : 'post',
				url : '/snsreplies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "POST"
					},
					dataType : 'text',
					data: JSON.stringify({bno:bNo, replyer:replyer, replytext:replytext}),
					success : function (result) {
						console.log("result :"+result);
						if(result == 'SUCCESS'){
							alert("등록 되었습니다.");
							replyPage = 1;
							getPage3("/snsreplies/"+bNo+"/"+replyPage, bNo);
							replytextObj.val("");
						}
					}
			});
	
			
		});
		
		// 템플릿 코드안에 버튼이 안먹어서 함수로 빼서 실행 시킴
		function repADD(bno) {
			var newReplyText = $("#newReplyText"+bno);
			
			var bNo = bno;
			var replyerObj = loginId;
			var replytextObj = newReplyText;
			var replyer	= replyerObj;
			var replytext = replytextObj.val();
			$.ajax({
				type : 'post',
				url : '/snsreplies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override": "POST"
					},
					dataType : 'text',
					data: JSON.stringify({bno:bNo, replyer:replyer, replytext:replytext}),
					success : function (result) {
						console.log("result :"+result);
						if(result == 'SUCCESS'){
							alert("등록 되었습니다.");
							replyPage = 1;
							getPage3("/snsreplies/"+bNo+"/"+replyPage, bNo);
							replytextObj.val("");
						}
					}
			});
		}
		
	
	</script>

	</c:forEach>
	<!-- readPage.js 끝 -->


	<!-- 무한스크롤 -->

	<script type="text/javascript">
	
		function getBoardList(bno, title, content, writer, regdate, viewcnt, replycnt, likecnt) {
			
			
			var Bno, Title, Content, Writer, Regdate, Viewcnt, Replycnt, Likecnt;
		
			Bno = bno;
		
			Title = title;
			
			Content = content;
		
			Writer = writer;
			
			Regdate = regdate;
			
			Viewcnt = viewcnt;
			
			Replycnt = replycnt;
		
			Likecnt = likecnt
			
			return {Bno:Bno, Title:Title, Content:Content, Writer:Writer, Regdate:Regdate, Viewcnt:Viewcnt, Replycnt:Replycnt, Likecnt:likecnt};
		}
		var template3 = Handlebars.compile($("#templateAttach3").html());
		var page = 0;
		var perPageNum = 10;
		$(window).scroll(function() {
		    if ($(window).scrollTop() == $(document).height() - $(window).height() && countList > page) {
		    	var loginID = "${login.uid}";
		    	page = page + 10 ;
		    	perPageNum = perPageNum;
				$.ajax({
				url: '/snsboard/listAdd',
				data: "page="+page+"&perPageNum="+perPageNum,
				dataType:"JSON",
				type: 'GET',
				success: function (data) {
					$.each(data, function (i, item) {
						var boardList = getBoardList(item.bno, item.title, item.content, item.writer, item.regdate, item.viewcnt, item.replycnt, item.likecnt);
						var html3 = template3(boardList);
						$("#myContainer").append(html3);
						listPhotoAdd(item.bno);
						getPage("/snsreplies/" + item.bno + "/1", item.bno);
						
						var itemNo = item.bno;
						// 재로딩시 좋아요 추가 AJAX
						$.ajax({
							url: '/snsboard/heartGetOne',
							data: "uid="+loginID+"&bno="+item.bno,
							dataType:"JSON",
							type: 'GET',
							success: function (data) {
								if(data == 1){
									heartBeat(itemNo);
								}
							}
							
						});
						
					});
				},
				complete: function (data) {
					ContentMore();
					}
				
			});
		    }
		});
		
		function listPhotoAdd(bno) {
			$.ajax({
				type:"POST",
				url: "/snsboard/getAttach/"+bno,
				dataType: "json",
				success: function (data) {
					var i = 1;
					$(data).each(function () {
						var fileInfo = getFileInfo(this, i, bno);
						var html = template(fileInfo);
						var html2 = template2(fileInfo);
						$(".uploadedList"+bno).append(html);
						$(".uploadedListLabel"+bno).append(html2);
						i++;
						if(i>data.length){
							bno++;
						}
					}
					);
				
				}
				
			})
		}
	</script>

	<!-- 무한스크롤 끝-->

	<!-- Contents 더보기/접기 -->
	<script type="text/javascript">
		$(function () {
			// Grab all the excerpt class
			$('.excerpt').each(function () {
				// Run formatWord function and specify the length of words display to viewer
				$(this).html(formatWords($(this).html(), 15));
				
				// Hide the extra words
				$(this).children('span').hide();
			
			// Apply click event to read more link
			}).click(function () {
	
				// Grab the hidden span and anchor
				var more_text = $(this).children('span.more_text');
				var more_link = $(this).children('a.more_link');
					
				// Toggle visibility using hasClass
				// I know you can use is(':visible') but it doesn't work in IE8 somehow...
				if (more_text.hasClass('hide')) {
					more_text.show();
					more_link.html('접기');		
					more_text.removeClass('hide');
				} else {
					more_text.hide();
					more_link.html('더 보기');			
					more_text.addClass('hide');
				}
	
				return false;
			
			});
		});
		
		// 템플릿 코드 로딩시 실행됨
		function ContentMore() {
			// Grab all the excerpt class
			$('.excerpt2').each(function () {
				// Run formatWord function and specify the length of words display to viewer
				$(this).html(formatWords($(this).html(), 15));
				
				// Hide the extra words
				$(this).children('span').hide();
			
			// Apply click event to read more link
			}).click(function () {
	
				// Grab the hidden span and anchor
				var more_text = $(this).children('span.more_text');
				var more_link = $(this).children('a.more_link');
					
				// Toggle visibility using hasClass
				// I know you can use is(':visible') but it doesn't work in IE8 somehow...
				if (more_text.hasClass('hide')) {
					more_text.show();
					more_link.html('접기');		
					more_text.removeClass('hide');
				} else {
					more_text.hide();
					more_link.html('더 보기');			
					more_text.addClass('hide');
				}
	
				return false;
			
			});
		}
		
		// Accept a paragraph and return a formatted paragraph with additional html tags
		function formatWords(sentence, show) {
			// split all the words and store it in an array
			var words = sentence.split('');
			var new_sentence = '';
			// loop through each word
			for (i = 0; i < sentence.length; i++) {
				
				// process words that will visible to viewer
				if (i <= show) {
					new_sentence += words[i] + '';
					
				// process the rest of the words
				} else {
			
					// add a span at start
					if (i == (show + 1)) new_sentence += '<span class="more_text hide">';		
	
					new_sentence += words[i] + '';
				
					// close the span tag and add read more link in the very end
					if (words[i+1] == null) new_sentence += '</span><a href="#" class="more_link"> 더 보기</a>';
				}
				
				// 문자 박스에 맞춰서 띄어쓰기 할려고 이렇게 함
				if(i>0 && i%40 == 0){
					new_sentence += '\n';	
				}
		
			} 
	
			return new_sentence;
	
		}	
		
	</script>

	<!-- Contents 더보기/접기 -->

	<!-- 댓글 더보기/접기 -->
	<script type="text/javascript">
	function loadRepl(bNo){
        $(".timeline"+bNo).find("li:hidden").slice(0, 10).show(); // select the first ten
        if( $(".timeline"+bNo).find("li:hidden").length == 0){ // check if any hidden divs still exist
			$("#load"+bNo).remove();
        }
	}
	
	</script>
	<!-- 댓글 더보기/접기 -->


	<script>
	function like_func(bno) {
		var bNo = bno;
		var loginUid = loginId;
		$.ajax({
			url : "/snsboard/likeTo?bno="+bNo+"&uid="+loginUid,
			type: "GET",
			dataType: "text",
			success: function (result) {
				if(result == 'FIRST'){
					alert("좋아요가 처음으로 등록 되었습니다");
				}else if(result == 'SECOND'){
					alert("좋아요가 다시 활성화 되었습니다");
				}else if(result == 'THIRD'){
					alert("좋아요가 비활성화 되었습니다");
				}
			},
			error: function (request, status, error) {
				alert("error:"+error);
			}
		});
	}
	</script>
	
		<script>
	function like_func2(bno) {
		alert("하트");
		var bNo = bno;
		var loginUid = loginId;
		alert(bNo);
		alert(loginUid);
		$.ajax({
			url : "/snsboard/likeTo?bno="+bNo+"&uid="+loginUid,
			type: "GET",
			dataType: "text",
			success: function (result) {
				alert("msg=="+result);
				if(result == 'FIRST'){
					alert("좋아요가 처음으로 등록 되었습니다");
				}else if(result == 'SECOND'){
					alert("좋아요가 다시 활성화 되었습니다");
				}else if(result == 'THIRD'){
					alert("좋아요가 비활성화 되었습니다");
				}
			},
			error: function (request, status, error) {
				alert("error:"+error);
			}
		});
		heartBeat(bNo);
	}
	</script>
	
	<script type="text/javascript">
	var loginID = "${login.uid}";
	// 겟 하트
	$.ajax({
			url: '/snsboard/heartGet',
			data: "uid="+loginID,
			dataType:"JSON",
			type: 'GET',
			success: function (data) {
				$.each(data, function (i, item) {
					heartBeat(item.bno);
				});
			},
			complete: function (data) {
			}
			
	});
	</script>
	<!-- sns js -->

	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script src='https://cdn.jsdelivr.net/mojs/latest/mo.min.js'></script>
	<script src="/resources/js/index.js"></script>

	<!-- sns js 끝 -->
	
</body>
</html>

<%@include file="../include/footer.jsp"%>