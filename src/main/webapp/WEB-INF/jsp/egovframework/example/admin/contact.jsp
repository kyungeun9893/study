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
				<h1 class="page-header">Contact</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Contact List (최신순)</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<form name="contactListForm" action="/cong/admin/contact.do">
									<input type="hidden" name="pageIndex" />
								</form>
								<thead>
									<tr>
										<th>#</th>
										<th>제목</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${contactList}">
										<tr>
											<td>${item.idx}</td>
											<td><a href="/cong/admin/contactDetail.do?idx=${item.idx}">${item.ctitle}</a></td>
											<td>${item.cdate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.panel-body -->
				</div>
			</div>
		</div>
		<ui:pagination paginationInfo="${pi}" jsFunction="page" />
	</div>
</div>
<jsp:include page="../adminframe/footer.jsp"></jsp:include>
<script>
function deletecontact(idx){
	if(confirm("삭제하시겠습니까?")){
	location.href='/cong/admin/contactDelete.do?idxJsp='+idx;
	}
}
function page(num){
	document.contactListForm.pageIndex.value = num;
	document.contactListForm.submit();
}

</script>
</body>
</html>