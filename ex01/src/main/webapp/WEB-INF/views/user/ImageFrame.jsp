<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet" />
<script src="http://vjs.zencdn.net/c/video.js"></script>
<!-- 이미지 보여주기 css -->
<style type="text/css">
	.popup {position: absolute;}
	.back { background-color: gray; opacity: 0.5; width: 100%; height: 100%;
	overflow: hidden; z-index: 1101;}
	
	.front { z-index: 1110; opacity: 1; border: 1px; margin: auto;}
	.show {
		position: relative;
		max-width: 1200px;
		max-height: 800px;
		overflow: auto;
	}
	body {
	  background: #e7e7e7;
	}
	#boxBody {
	  width: 300px;
	  height: 200px;
	  box-shadow: inset 1px 1px 40px 0 rgba(0, 0, 0, 0.45);
	  border-bottom: 2px solid #fff;
	  border-right: 2px solid #fff;
	  margin: 5% auto 0 auto;
	  background: url(http://ianfarb.com/wp-content/uploads/2013/10/nicholas-hodag.jpg);
	  background-size: cover;
	  border-radius: 5px;
	  overflow: hidden;
	}
	
	#overlayCss {
	  background: rgba(0, 0, 0, 0.75);
	  text-align: center;
	  padding: 45px 0 66px 0;
	  opacity: 0;
	  -webkit-transition: opacity 0.25s ease;
	  -moz-transition: opacity 0.25s ease;
	}
	
	#boxBody:hover #overlayCss {
	  opacity: 1;
	}
	
	#plus {
	  font-family: Helvetica;
	  font-weight: 900;
	  color: rgba(255, 255, 255, 0.85);
	  font-size: 96px;
	}

</style>
<!-- imageSlider.css -->
<link rel="stylesheet" href="/resources/css/imageSlider.css">
<!-- imageSlider.css 끝 -->

<!-- 이미지 보여주는곳 -->
<div class="popup back" style="display: none;"></div>
	<div id="popup_front" class="popup front" style="display: none;">
	<img id="popup_img" >
</div>

<div id="boxBody">
  <img src="http://farm9.staticflickr.com/8504/8365873811_d32571df3d_z.jpg">
  <div id="overlayCss">
    <span id="plus">+</span>
  </div>
</div>

<!-- upload.js -->
<script type="text/javascript" src="/resources/js/upload.js">
</script>

		<ul class="mailbox-attachments clearfix uploadedList">
			<li>
				<div class="mailbox-attachment-info" style="width: 500px; height: 400px;">
				<a href="#" class="mailbox-attachment-name" onclick="getBoard()">
				<span class="mailbox-attachment-icon has-img">
					<img src="http://farm9.staticflickr.com/8504/8365873811_d32571df3d_z.jpg">
				</span>
				</a>
				</div>
			</li>
		</ul>
		
<div class="popup back" style="display: none;"></div>
	<div id="popup_front" class="popup front" style="display: none;">
		<!-- Main content -->
		<section class="content">

			<div class="box" id="boxbody1">
			<div id="item1" style="float: left; margin-right: 50px;">
				<ul class="slides">
			    <input type="radio" name="radio-btn" id="img-1" checked />
			    <li class="slide-container">
					<div class="slide">
						<img src="http://farm9.staticflickr.com/8072/8346734966_f9cd7d0941_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-6" class="prev">&#x2039;</label>
						<label for="img-2" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <input type="radio" name="radio-btn" id="img-2" />
			    <li class="slide-container">
			        <div class="slide">
			          <img src="http://farm9.staticflickr.com/8504/8365873811_d32571df3d_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-1" class="prev">&#x2039;</label>
						<label for="img-3" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <input type="radio" name="radio-btn" id="img-3" />
			    <li class="slide-container">
			        <div class="slide">
			          <img src="http://farm9.staticflickr.com/8068/8250438572_d1a5917072_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-2" class="prev">&#x2039;</label>
						<label for="img-4" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <input type="radio" name="radio-btn" id="img-4" />
			    <li class="slide-container">
			        <div class="slide">
			          <img src="http://farm9.staticflickr.com/8061/8237246833_54d8fa37f0_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-3" class="prev">&#x2039;</label>
						<label for="img-5" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <input type="radio" name="radio-btn" id="img-5" />
			    <li class="slide-container">
			        <div class="slide">
			          <img src="http://farm9.staticflickr.com/8055/8098750623_66292a35c0_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-4" class="prev">&#x2039;</label>
						<label for="img-6" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <input type="radio" name="radio-btn" id="img-6" />
			    <li class="slide-container">
			        <div class="slide">
			          <img src="http://farm9.staticflickr.com/8195/8098750703_797e102da2_z.jpg" />
			        </div>
					<div class="nav">
						<label for="img-5" class="prev">&#x2039;</label>
						<label for="img-1" class="next">&#x203a;</label>
					</div>
			    </li>
			
			    <li class="nav-dots">
			      <label for="img-1" class="nav-dot" id="img-dot-1"></label>
			      <label for="img-2" class="nav-dot" id="img-dot-2"></label>
			      <label for="img-3" class="nav-dot" id="img-dot-3"></label>
			      <label for="img-4" class="nav-dot" id="img-dot-4"></label>
			      <label for="img-5" class="nav-dot" id="img-dot-5"></label>
			      <label for="img-6" class="nav-dot" id="img-dot-6"></label>
			    </li>
			</ul>
			</div>
			<div id="item2" style="float: left;">
				<h3>안녕</h3>
			</div>
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
</div>
<!-- prettifyDate 기능 구현 -->
<script type="text/javascript">
	
	function imagePop(fileLink) {
		var image= "/resources/image/image1.jpg";
		var imgTag = $("#popup_img");
		imgTag.attr("src", image);
		
		console.log(imgTag.attr("src"));
		
		$(".popup").show('slow');
		imgTag.addClass("show");
	}

	
	function getBoard() {
		$(".popup").show('slow');
		imgTag.addClass("show");
	}
	
	$("#popup_img").on("click", function () {
		$(".popup").hide('slow');
	});
	
	function overlay() {
		document.getElementById('overlaycss').classList.add('image-cover');
	}
	function Offoverlay() {
		document.getElementById('overlaycss').classList.remove('image-cover');
	}

	
</script>

<%@include file="../include/footer.jsp"%>