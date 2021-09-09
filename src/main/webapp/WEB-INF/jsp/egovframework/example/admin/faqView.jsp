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
자주 묻는 질문
<a href="/cong/admin/faq.do">등록</a>
<a href="/cong/admin/main.do">목록</a>
<form name="faqListForm" action="/cong/admin/faqView.do">
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
	<c:forEach var="item" items="${faqList}">
		<tr>
			<td>${item.idx}</td>
			<td>${item.fdate}</td>
			<td><a href="/cong/admin/faqDetail.do?idx=${item.idx}">${item.title}</a></td>
			<td><a href="/cong/admin/faqUpdate.do?idx=${item.idx}">수정</a></td>
			<td><button type="button" onclick="deleteFaq(${item.idx})">삭제</button></td>
		</tr>
	</c:forEach>
</table>
	<ui:pagination paginationInfo="${pi}" jsFunction="page"/>
<script>
function deleteFaq(idx){
	if(confirm("삭제하시겠습니까?")){
	location.href='/cong/admin/faqDelete.do?idxJsp='+idx;
	}
}
function page(num){
	document.faqListForm.pageIndex.value = num;
	document.faqListForm.submit();
}
</script>
</body>
</html>