<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<h1 class="page-header">Contact Detail</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Contact Detail</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form role="form">
										<div class="form-group">
											<label>회사명</label> <span class="form-control">${contactDetail.ctitle}</span>
										</div>
										<div class="form-group">
											<label>등록자</label> <span class="form-control">${contactDetail.name}</span>
										</div>
										<div class="form-group">
											<label>휴대폰번호</label> <span class="form-control">${contactDetail.cphone}</span>
										</div>
										<div class="form-group">
											<label>전화번호</label> <span class="form-control">${contactDetail.phone}</span>
										</div>
										<div class="form-group">
											<label>이메일</label> <span class="form-control">${contactDetail.email}</span>
										</div>
										<div class="form-group">
											<label>홈페이지</label> <span class="form-control">${contactDetail.homepage}</span>
										</div>
										<div class="form-group">
											<label>참고 링크1</label> <span class="form-control">${contactDetail.link1}</span>
										</div>
										<div class="form-group">
											<label>참고 링크2</label> <span class="form-control">${contactDetail.link2}</span>
										</div>
										<div class="form-group">
											<label>예산</label> <span class="form-control">${contactDetail.budget}</span>
										</div>
										<div class="form-group">
											<label>문의내용</label> <span class="form-control">${contactDetail.text}</span>
										</div>
									</form>
								</div>
							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
					<button type="button" onclick="deleteMember(${contactDetail.idx})" class="btn btn-danger">삭제</button>
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<jsp:include page="../adminframe/footer.jsp"></jsp:include>
</body>
<script>
function deleteMember(idx){
	if(confirm("삭제하시겠습니까?")){
	location.href='/cong/admin/contactDelete.do?idxJsp='+idx;
	}
}
</script>
</html>