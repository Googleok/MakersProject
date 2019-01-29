<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	 <link rel="stylesheet" href="/resources/css/mainCss.css">
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
	
		
	
	
<style>
#myroom-logo p {
    padding-left: 800px;
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
         	<button type="button" id="MyPageBtn" class="btn btn-primary" data-toggle="modal" data-target="#myPageModal">
		  	My Page
			</button>
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