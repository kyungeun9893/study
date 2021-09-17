<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<h1 class="page-header">Portfolio 수정</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Portfolio 수정</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form action="/cong/admin/portfolioUpdateProcess.do" method="post" role="form">
										<input type="hidden" name="idx" value="${portfolioDetail.idx}"/>
										<div class="form-group">
											<label>제목</label> <input type="text" name="title" value = "${portfolioDetail.title}" class="form-control">
										</div>
										<div class="form-group">
											<label>간략 소개</label>
											<textarea name="stext" class="form-control" rows="3"> ${portfolioDetail.stext} </textarea>
										</div>
										<div class="form-group">
											<label>개발 정보</label>
											<textarea name="dtext" class="form-control" rows="3"> ${portfolioDetail.dtext}</textarea>
										</div>
								</div>
							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<input type="submit" value="수정" class="btn btn-primary"/>
				<button type="button" onclick="deleteMember(${portfolioDetail.idx})" class="btn btn-danger">삭제</button>
			</div>
			</form>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<jsp:include page="../adminframe/footer.jsp"></jsp:include>
<script>
function deleteMember(idx){
	if(confirm("삭제하시겠습니까?")){
	location.href='/cong/admin/portfolioDelete.do?idxJsp='+idx;
	}
}
</script>
</body>
</html>