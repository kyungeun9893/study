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
					<h1 class="page-header">Portfolio 등록</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">Portfolio 등록</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form action="/cong/admin/portfolioProcess.do" method="post" role="form">
										<div class="form-group">
											<label>제목</label> <input type="text" name="title" class="form-control">
										</div>
										<div class="form-group">
											<label>간략 내용</label>
											<textarea name="stext" class="form-control" rows="3"></textarea>
										</div>
										<div class="form-group">
											<label>개발내용</label>
											<textarea name="dtext" class="form-control" rows="3"></textarea>
										</div>
								</div>
							</div>
							<!-- /.col-lg-6 (nested) -->
						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
			<input type="submit" value="등록" />
			</form>
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
	<jsp:include page="../adminframe/footer.jsp"></jsp:include>
</body>
</html>