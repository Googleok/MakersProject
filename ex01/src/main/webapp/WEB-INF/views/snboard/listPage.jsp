<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<!-- Main content -->
<style>
#listTr {
    font-size: 20px;
    font-weight: bold;
}
#notice1:hover { color: coral; }

#qna1{
    position :relative;
    left:20px;
}

#qna1:hover{ color: coral;}

#noticeTab{
    font-size:20px;
    font-weight: bold;
}
</style>
<section class="content" id="boardList">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class='box'>
				<div class = "box-header" id="noticeTab">
					<a href="/snboard/listPage" id="notice1">공지사항</a>
					<a href="/qnaboard/listPage" id="qna1">Q&A</a>
				</div>
				<div class="box-header with-border">
					<h2 class="box-title">시스템 공지사항</h2>
				</div>
				<div class='box-body'>
					<select name="searchType">
						<option value="n">
							<c:out value="${cri.searchType == null ?'selected' : ''}"/>
						---</option>
						<option value="t">
							<c:out value="${cri.searchType eq 't' ?'selected' : ''}"/>
						Title</option>
						<option value="c">
							<c:out value="${cri.searchType eq 'c' ?'selected' : ''}"/>
						Content</option>
						<option value="w">
							<c:out value="${cri.searchType eq 'w' ?'selected' : ''}"/>
						Writer</option>
						<option value="tc">
							<c:out value="${cri.searchType eq 'tc' ?'selected' : ''}"/>
						Title or Content</option>
						<option value="cw">
							<c:out value="${cri.searchType eq 'cw' ?'selected' : ''}"/>
						Content or Writer</option>
						<option value="tcw">
							<c:out value="${cri.searchType eq 'tcw' ?'selected' : ''}"/>
						Title or Content or Writer</option>
					</select>
					<input type="text" name="keyword" id="keywordInput"
						value='${cri.keyword}'>
					<button id="searchBtn" class="btn btn-default" >Search</button>
					<c:if test="${'admin' eq login.uid}">
					<button id='newBtn' class="btn btn-warning">New Board</button>
					</c:if>
				</div>
			</div>
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST PAGING</h3>
				</div>
				<div class="box-body">
				<!-- 게시판 보드 -->
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>

						<c:forEach items="${list}" var="snBoardVO">

							<tr id="listTr">
								<td>${snBoardVO.bno}</td>
				
								<td><a href='/snboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${snBoardVO.bno}'>
									<strong style="color: red;">[공지]</strong> ${snBoardVO.title} <strong>[ ${snBoardVO.replycnt} ]</strong>
									</a>
								</td>
								<td>${snBoardVO.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${snBoardVO.regdate}" /></td>
								<td><span class="badge bg-red">${snBoardVO.viewcnt}</span></td>
							</tr>

						</c:forEach>

					</table>
					<!-- 게시판 보드 end -->
				</div>				
				<!-- /.box-body -->


				<div class="box-footer">

					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li>
									<a href="/snboard/listPage${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a>
								</li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
									   end="${pageMaker.endPage }" 
									   var="idx">
													   
								<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="/snboard/listPage${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li>
									<a href="/snboard/listPage${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a>
								</li>
							</c:if>

						</ul>
					</div>

				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->


<%@include file="../include/footer.jsp"%>

<form id="jobForm">
  <input type='hidden' name="page" value="${pageMaker.cri.page}">
  <input type='hidden' name="perPageNum" value="${pageMaker.cri.perPageNum}">
</form>

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
					self.location = "/snboard/listPage"
						+ '${pageMaker.makeQuery(1)}'
						+ '&searchType='
						+$("select option:selected").val()
						+ "&keyword=" + $('#keywordInput').val();
				});	
				
				$('#newBtn').on("click", function(evt) {

					self.location = "/snboard/register";

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

    //캔슬버튼 눌렀을 눌렀을시 인풋박스 클리어
    $("#cancelbtn").click(function(){
            $("#uemail1").val(null);
            $("#uemail2").val(null);
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
    