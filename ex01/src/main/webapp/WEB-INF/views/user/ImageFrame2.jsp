<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html><html lang='en' class=''>
<head><script src='//static.codepen.io/assets/editor/live/console_runner-1df7d3399bdc1f40995a35209755dcfd8c7547da127f6469fd81e5fba982f6af.js'></script><script src='//static.codepen.io/assets/editor/live/css_reload-5619dc0905a68b2e6298901de54f73cefe4e079f65a75406858d92924b4938bf.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/ianfarb/pen/ikeAf" />


<style class="cp-pen-styles">
@import url(https://fonts.googleapis.com/css?family=Raleway);

*, *:before, *:after{
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing:border-box;
  box-sizing: border-box;
}

body{
  background: #f9f9f9;
  font-size: 16px;
  font-family: 'Raleway', sans-serif;
}

.main-title{
  color: #2d2d2d;
  text-align: center;
  text-transform: capitalize;
  padding: 0.7em 0;
}

.containerOverlay{
  padding: 1em 0;
  float: left;
  width: 50%;
}
@media screen and (max-width: 640px){
  .containerOverlay{
    display: block;
    width: 100%;
  }
}

@media screen and (min-width: 900px){
  .containerOverlay{
    width: 33.33333%;
  }
}

.containerOverlay .title{
  color: #1a1a1a;
  text-align: center;
  margin-bottom: 10px;
}

.contentOverlay {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
}

.contentOverlay .content-overlay {
  background: rgba(0,0,0,0.7);
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

.contentOverlay:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  padding-left: 1em;
  padding-right: 1em;
  width: 100%;
  top: 50%;
  left: 50%;
  opacity: 0;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transition: all 0.3s ease-in-out 0s;
  -moz-transition: all 0.3s ease-in-out 0s;
  transition: all 0.3s ease-in-out 0s;
}

.contentOverlay:hover .content-details{
  top: 50%;
  left: 50%;
  opacity: 1;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}

.content-details p{
  color: #fff;
  font-size: 0.8em;
}

.fadeIn-bottom{
  top: 80%;
}

.fadeIn-top{
  top: 20%;
}

.fadeIn-left{
  left: 20%;
}

.fadeIn-right{
  left: 80%;
}
</style></head><body>
<h1 class="main-title">Simple image overlay hover effects</h1>

<div class="containerOverlay">
  <h3 class="title">Text fadeIn bottom</h3>
  <div class="contentOverlay">
    <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
      <div class="content-overlay"></div>
      <img class="content-image" src="https://images.unsplash.com/photo-1433360405326-e50f909805b3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=359e8e12304ffa04a38627a157fc3362">
      <div class="content-details fadeIn-bottom">
        <h3 class="content-title">This is a title</h3>
        <p class="content-text">This is a short description</p>
      </div>
    </a>
  </div>
</div>

<div class="containerOverlay">
  <h3 class="title">Text fadeIn top</h3>
  <div class="contentOverlay">
    <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
      <div class="content-overlay"></div>
      <img class="content-image" src="https://images.unsplash.com/photo-1433360405326-e50f909805b3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=359e8e12304ffa04a38627a157fc3362">
      <div class="content-details fadeIn-top">
        <h3>This is a title</h3>
        <p>This is a short description</p>
      </div>
    </a>
  </div>
</div>

<div class="containerOverlay">
  <h3 class="title">Text fadeIn left</h3>
  <div class="content">
    <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
      <div class="content-overlay"></div>
      <img class="content-image" src="https://images.unsplash.com/photo-1433360405326-e50f909805b3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1080&fit=max&s=359e8e12304ffa04a38627a157fc3362">
      <div class="content-details fadeIn-left">
        <h3>This is a title</h3>
        <p>This is a short description</p>
      </div>
    </a>
  </div>
</div>



</body></html>