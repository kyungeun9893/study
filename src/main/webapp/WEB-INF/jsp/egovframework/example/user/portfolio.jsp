<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../userframe/header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../userframe/top.jsp"></jsp:include>
	<div class="body">
		<form name="listForm" action="/cong/user/portfolio.do">
			<input type="hidden" name="pageIndex" />
		</form>
		<div class="porttop">
			<div class="title-copy">
				<strong class="bold-text-4">Our Projects</strong>
			</div>
		</div>
		<div class="portfolo">
			<c:forEach var="item" items="${portfolioList}">
				<div class="portbox">
					<div class="portinbox">
						<div class="portlist">
							<div class="div-block-62">
								<img src="../webflow/images/5ed897cc72d3217fea31c977_강원도보로고-p-130x130q80.png" alt="" class="portlmage">
							</div>
						</div>
						<div class="porttitlebox">
							<div class="porttitle">${item.title}</div>
							<div class="porttitle2">${item.stext}</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<ui:pagination paginationInfo="${pi}" jsFunction="page" />
    <div class="btnpop">
      <a href="/cong/user/contact.do" class="btnpoplink2 w-inline-block"><img src="../webflow/images/pngwing.com---2020-11-10T115527.576.png" loading="lazy" sizes="(max-width: 767px) 6vw, 38.99305725097656px" srcset="/cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-500.png 500w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576-p-800.png 800w, /cong/webflow/images/pngwing.com---2020-11-10T115527.576.png 1012w" alt="" class="btnpoplmage"></a>
      <div class="btnpoptext">제작문의</div>
      <a href="/cong/user/faq.do" class="btnpoplink2 w-inline-block"><img src="/cong/webflow/images/pngwing.com---2020-11-10T115545.272.png" loading="lazy" alt="" class="btnpoplmage"></a>
      <div class="btnpoptext">FAQ</div>
    </div>
	</div>
	<jsp:include page="../userframe/contactBox.jsp"></jsp:include>
	<jsp:include page="../userframe/buttom.jsp"></jsp:include>
	<jsp:include page="../userframe/footer.jsp"></jsp:include>
	<script>
		function page(num) {
			document.listForm.pageIndex.value = num;
			document.listForm.submit();

		}
	</script>
</body>
</html>