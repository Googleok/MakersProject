<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html id="snsboardList">
<head>
    <!-- Bootstrap 3.3.4 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
	 <!-- Our Custom CSS -->
   
     <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
 
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='/resources/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/resources/dist/js/demo.js" type="text/javascript"></script>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<!-- Popper.JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/resources/js/jquery.mCustomScrollbar.min.css"></script>
	<!-- iCheck -->
  	<script src="/resources/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	
<!-- MainCSS -->	
<style type="text/css">

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */
#sidebar {
  width: 250px;
  position: fixed;
  top: 0;
  left: -250px;
  height: 100vh;
  z-index: 999;
  background: #7386D5;
  color: #fff;
  transition: all 0.3s;
  overflow-y: scroll;
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.2);
}

#sidebar.active {
  left: 0;
}

#dismiss {
  width: 35px;
  height: 35px;
  line-height: 35px;
  text-align: center;
  background: #7386D5;
  position: absolute;
  top: 10px;
  right: 10px;
  cursor: pointer;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

#dismiss:hover {
  background: #fff;
  color: #7386D5;
}

.overlay {
  display: none;
  position: fixed;
  width: 100vw;
  height: 100vh;
  background: rgba(0, 0, 0, 0.7);
  z-index: 998;
  opacity: 0;
  transition: all 0.5s ease-in-out;
}

.overlay.active {
  display: block;
  opacity: 1;
}

#sidebar .sidebar-header {
  padding: 20px;
  background: #6d7fcc;
}

#sidebar ul.components {
  padding: 20px 0;
  border-bottom: 1px solid #47748b;
}

#sidebar ul p {
  color: #fff;
  padding: 10px;
}

#sidebar ul li a {
  padding: 10px;
  font-size: 1.1em;
  display: block;
}

#sidebar ul li a:hover {
  color: #7386D5;
  background: #fff;
}

#sidebar ul li.active>a,
a[aria-expanded="true"] {
  color: #fff;
  background: #6d7fcc;
}

a[data-toggle="collapse"] {
  position: relative;
}

.dropdown-toggle::after {
  display: block;
  position: absolute;
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
}

ul ul a {
  font-size: 0.9em !important;
  padding-left: 30px !important;
  background: #6d7fcc;
}

ul.CTAs {
  padding: 20px;
}

ul.CTAs a {
  text-align: center;
  font-size: 0.9em !important;
  display: block;
  border-radius: 5px;
  margin-bottom: 5px;
}

a.download {
  background: #fff;
  color: #7386D5;
}

a.article,
a.article:hover {
  background: #6d7fcc !important;
  color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content {
  width: 100%;
  min-height: 100vh;
  transition: all 0.3s;
  position: absolute;
  top: 0;
  right: 0;
}

#myroom-logo{
  margin-right: 50%;
}
#myroom-logo p{
  font-size: 30px;
}

</style>	
<!-- MainCSS -->	
	
	
	
	
	
	
	
	
	
<style>
#myroom-logo p {
    padding-left: 45%;
    margin-left: 100px;
    color: #ffffff;
    position: relative;
    bottom: 20px;
}


nav.navbar.navbar-expand-lg.navbar-light.bg-light {
    background-color: #6d46f0;
    color: #ffffff;
}

section.content {
    width: 1400px;
}

#searchBtn {
    background-color: #ffde0a;
    color: #ffffff;
}

#newBtn {
    background-color: #ff6b9c;
    color: #ffffff;
} 

div.box-header.with-border {
    background-color: #9987ff;
    color: #ffffff;
}

tbody tr th {
    background-color: #ff9e9e;
}

#makersBackground{
	background-color: #F2F2F2;
}

#sidebarCollapse{
    position: relative;
    left: 30px;
    top: 25px;
    background-color: #ffde0a;
    color: #ffffff;
    font-weight: bold;
}
#MyPageBtn{
    width: 250px;
    height:45px;    
    background: #7386D5;
    text-align: left;
    font-size: 15px;
    line-height: 1.42857143;
    
}
#MyPageBtn:hover {
  color: #7386D5;
  background: #fff;
}
</style> 

<!-- 프로필 css -->
<style type="text/css">
img.img-inner-window {
    width: 580px;
    height: 580px;
}

#content {
    background-color: #ffffff;
    color: #ffffff;
}

ul.list-unstyled.components li a {
    font-weight: bold;
    color: #ffffff;
    font-size: 20px;
}

button.btn.btn-primary {
    font-weight: bold;
}

ul.list-unstyled.components p {
    font-weight: bold;
    font-size: 20px;
}



</style>


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
	width: 180px;
	height: 180px;
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
    margin-top: 35px;    
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

#box_header {
    height: 300px;
}

#profilePhoto1 {
    position: relative;
    top: 20%;
    left: 20%;
}

#profileId {
    position: relative;
    bottom: 40%;
    left: 40%;
}

#profileDetails {
    position: relative;
    bottom: 40%;
    left: 40%;
}

#profileName {
    position: relative;
    bottom: 30%;
    left: 40%;
}

#profileWord {
    position: relative;
    bottom: 25%;
    left: 40%;
}

#profileModify {
    position: relative;
    bottom: 52%;
    left: 61%;
}

h3{
 color: black;   
}

section.image-wrap.cf.clear {
    margin-top: 100px;
    background-color: #f2f2f2;
}

div.hd h3 {
    color: #ffffff;
}

p.p-inner-window {
    font-size: 20px;
}

</style>
<!-- video.js -->
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet" />

<script src="http://vjs.zencdn.net/c/video.js"></script>
<!--  video.js 끝 -->

<!-- imageSlider.css -->
<link rel="stylesheet" href="/resources/css/imageSlider.css">
<!-- imageSlider.css 끝 -->

<link rel="stylesheet" href="/resources/css/heartbutton.css">
	
<link rel="stylesheet" type="text/css" href="/resources/css/colorboxcss.css">
 </head>
 <body style="overflow-x: hidden; overflow-y: auto;">

 <div class="wrapper" id="makersBackground">
    <!-- Sidebar -->
    <nav id="sidebar">

      <div id="dismiss">
        <i class="fas fa-arrow-left"></i>
      </div>

      <div class="sidebar-header">
        <h3>Makers</h3>
      </div>

      <ul class="list-unstyled components">
        <p>Menu</p>


        <li class="active">
          <a href="/user/login">Home</a>
        </li>
        <li>
         	<a id="MyPageBtn" class="btn btn-primary" data-toggle="modal" data-target="#myPageModal">
		  	My Page
			</a>
        </li>
        <li>
          <a href="/sboard/listPage">My Home</a>
        </li>

        <li>
          <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">Chat</a>
          <ul class="collapse list-unstyled" id="pageSubmenu">
            <li>
              <a href="/user/login">개인 채팅</a>
            </li>
            <li>
              <a href="/user/login">우리 동 채팅</a>
            </li>
          </ul>
        </li>

       <li>
          <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">Service Center</a>
          <ul class="collapse list-unstyled" id="pageSubmenu1">
            <li>
              <a href="/snboard/listPage">Notice</a>
            </li>
            <li>
              <a href="/qnaboard/listPage">Q&A</a>
            </li>
          </ul>
        </li>
        
        <li>
          <a href="/user/logout">로그아웃</a>
        </li>
      </ul>
    </nav>

    <!-- Page Content -->
    <div id="content">

      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">

          <button type="button" id="sidebarCollapse" class="btn btn-info">
            <i class="fas fa-align-left"></i>
            <span>Menu</span>
          </button>
          <span id="myroom-logo">
            <p>Makers</p>
          </span>
        </div>
      </nav>

<!-- Modal -->
<div class="modal fade" id="myPageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLongTitle">Insert Your Password</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="/user/myPage" method="post" id="frm">
        <input type="password" name="upw" style="width: 560px; height: 45px; font-size: 18px;">
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="postBtn" onclick="document.getElementById('frm').submit();">Post</button>
      </div>
    </div>
  </div>
</div>


	<section class="content" id="boardList8"
		style="background-color: #F2F2F2;">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<div class="box">
					<div class="box-header with-border" id="box_header">
						<h3 class="box-title">LIST PAGING</h3>
						<div id="profilePhoto1">
							<img src="/resources/image/image1.jpg" id="propilePhoto" />&nbsp;&nbsp;
						</div>
						<div id="profileId">
							<h3 class="box-title" style="font-size: 30px; font-weight: 100;">eok_10000000000000</h3>
						</div>
						<div id="profileModify">
							<button class="btn btn-default">프로필 편집</button>
						</div>
						
						<div id="profileDetails">
							<h3 class="box-title">
							게시물&nbsp;27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;팔로워&nbsp;188&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;팔로우&nbsp;293
							</h3>
						</div>
						<div id="profileName">
							<h3 class="box-title">박종억</h3>
						</div>
						<div id="profileWord">
							<h3 class="box-title">소소한 일상을 담다</h3>
						</div>
					</div>
					<hr>
					
				</div>

<section class="image-wrap cf clear" id="image-wrap">
  <a href="#test1Content" class="group-cbox1 inline" title="Lorem ipsum 1"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test2Content" class="group-cbox1 inline" title="Lorem ipsum 2"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test3Content" class="group-cbox1 inline" title="Lorem ipsum 3"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test4Content" class="group-cbox1 inline" title="Lorem ipsum 4"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test5Content" class="group-cbox1 inline" title="Lorem ipsum 5"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test6Content" class="group-cbox1 inline" title="Lorem ipsum 6"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test7Content" class="group-cbox1 inline" title="Lorem ipsum 7"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test8Content" class="group-cbox1 inline" title="Lorem ipsum 8"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test9Content" class="group-cbox1 inline" title="Lorem ipsum 9"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test10Content" class="group-cbox1 inline" title="Lorem ipsum 10"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test11Content" class="group-cbox1 inline" title="Lorem ipsum 11"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test12Content" class="group-cbox1 inline" title="Lorem ipsum 12"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test13Content" class="group-cbox1 inline" title="Lorem ipsum 13"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test14Content" class="group-cbox1 inline" title="Lorem ipsum 14"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test15Content" class="group-cbox1 inline" title="Lorem ipsum 15"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>
  <a href="#test16Content" class="group-cbox1 inline" title="Lorem ipsum 16"><img alt="" src="//placehold.it/128x128/" class="shadow"></a>

  <div style='display:none'>
    <div id="test1Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 1</h3></div>
        <div class="bd">
          <p class="p-inner-window">
          Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.
          </p>
        </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test2Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 2</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test3Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 3</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test4Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 4</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test5Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>
        <div class="hd"><h3>Image 5</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test6Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 6</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test7Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 7</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test8Content" class="inner-overlay-box">
      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>
        <div class="hd"><h3>Image 8</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test9Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 9</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test10Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 10</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>

      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test11Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 11</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p> </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test12Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 12</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p>
        </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test13Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 13</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p>
        </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test14Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 14</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p>
        </div>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div id="test15Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 15</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p>
        </div>
      </div>
    </div>
  </div>
  
   <div style='display:none'>
    <div id="test16Content" class="inner-overlay-box">

      <div class="media">
        <a href="#" class="img">
          <img alt="" src="//placehold.it/384x256/" class="img-inner-window" /></a>

        <div class="hd"><h3>Image 16</h3></div>
        <div class="bd">
          <p class="p-inner-window">Consequat ea Investigationes in enim congue. Option velit volutpat quod blandit ex. Congue parum praesent aliquam nam clari. Qui praesent quam sollemnes id vulputate. In imperdiet diam at sequitur et. Minim delenit in dolor dolore typi.</p>
        </div>
      </div>
    </div>
  </div>

</section>

	</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
		
	</section>
	<!-- /.content -->


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

	<script src='//static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js'></script>
	<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='/resources/js/colorbox.js'></script>
 
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='/resources/plugins/fastclick/fastclick.min.js'></script>
	<!-- Popper.JS -->
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/resources/js/jquery.mCustomScrollbar.min.css"></script>
	<!-- iCheck -->
  	<script src="/resources/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	</div>
    <!-- Dark Overlay element -->
    <div class="overlay"></div>
  </div>

</body>
</html>
