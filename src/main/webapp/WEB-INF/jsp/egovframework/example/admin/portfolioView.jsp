<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
포트폴리오
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
			
</table>
<ui:pagination paginationInfo="${pi}" jsFunction="page"/>
<script>
function deleteport(idx){
	if(confirm("삭제하시겠습니까?")){
	location.href='/cong/admin/portfolioDelete.do?idxJsp='+idx;
	}
}
function page(num){
	document.portfolioListForm.pageIndex.value = num;
	document.portfolioListForm.submit();
}
</script>
</body>
</html>