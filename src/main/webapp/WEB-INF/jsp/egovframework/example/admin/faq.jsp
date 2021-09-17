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
					<h1 class="page-header">FAQ 등록</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">FAQ 등록</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-6">
									<form role="form" action="/cong/admin/faqProcess.do" method="post">
										<div class="form-group">
											<label>Title</label> <input type="text" name="titleJsp" placeholder="제목을 입력해주세요" class="form-control">
										</div>
										<div class="form-group">
											<label>text</label>
											<textarea name="textJsp" placeholder="내용을 입력해주세요" class="form-control" rows="3"></textarea>
										</div>
								</div>
							</div>
							<!-- /.row (nested) -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<input type="submit" value="등록" />
				</form>
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
</body>
</html>