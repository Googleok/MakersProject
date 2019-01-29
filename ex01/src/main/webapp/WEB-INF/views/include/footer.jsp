<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    </div>
    <!-- Dark Overlay element -->
    <div class="overlay"></div>
  </div>



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
					self.location = "/sboard/listPage"
						+ '${pageMaker.makeQuery(1)}'
						+ '&searchType='
						+$("select option:selected").val()
						+ "&keyword=" + $('#keywordInput').val();
				});	
				
				$('#newBtn').on("click", function(evt) {

					self.location = "/sboard/register";

				});

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
    