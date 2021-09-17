<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../adminframe/header.jsp"></jsp:include>
</head>
<body>
<div id="wrapper">
<jsp:include page="../adminframe/top.jsp"></jsp:include>
<jsp:include page="../adminframe/left.jsp"></jsp:include>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Portfolio</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Portfolio List (최신순)</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<form name="portfolioListForm" action="/cong/admin/portfolioView.do">
									<input type="hidden" name="pageIndex" />
								</form>
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>간략소개</th>
										<th>정보</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${portfolioViewList}">
										<tr>
											<td>${item.idx}</td>
											<td><a href="/cong/admin/portfolioUpdate.do?idx=${item.idx}">${item.title}</a></td>
											<td>${item.stext}</td>
											<td>${item.dtext}</td>
											<td>${item.pdate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.panel-body -->
				</div>
				<button type="button" onclick="location.href='/cong/admin/portfolio.do'" class="btn btn-primary">등록</button>
			</div>
		</div>
		<ui:pagination paginationInfo="${pi}" jsFunction="page" />
	</div>
</div>
<jsp:include page="../adminframe/footer.jsp"></jsp:include>
<!--  포트폴리오
<a href="/cong/admin/portfolio.do">등록</a>
<a href="/cong/admin/main.do">목록</a>
<form name="portfolioListForm" action="/cong/admin/portfolioView.do">
	<input type="hidden" name="pageIndex"/>
</form>
<table>
	<tr>
		<th>번호</th>
		<th>등록일</th>
		<th>제목</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="item" items="${portfolioViewList}">
		<tr>
			<td>${item.idx}</td>
			<td>${item.pdate}</td>
			<td><a href="/cong/admin/portfolioDetail.do?idx=${item.idx}">${item.title}</a></td>
			<td><a href="/cong/admin/portfolioUpdate.do?idx=${item.idx}">수정</a></td>
			<td><button type="button" onclick="deleteport(${item.idx})">삭제</button></td>
		</tr>
	</c:forEach>
			
</table>-->
<script>
	function deleteport(idx) {
		if (confirm("삭제하시겠습니까?")) {
			location.href = '/cong/admin/portfolioDelete.do?idxJsp=' + idx;
		}
	}
	function page(num) {
		document.portfolioListForm.pageIndex.value = num;
		document.portfolioListForm.submit();
	}
</script>
</body>
</html>