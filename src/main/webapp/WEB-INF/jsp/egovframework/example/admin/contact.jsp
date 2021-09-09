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
Contact
<form name="contactListForm" action="/cong/admin/contact.do">
	<input type="hidden" name="pageIndex"/>
</form>
<table>
	<tr>
		<th>번호</th>
		<th>등록일</th>
		<th>제목</th>
		<th>삭제</th>
	</tr>
	<c:forEach var="item" items="${contactList}">
		<tr>
			<td>${item.idx}</td>
			<td>${item.cdate}</td>
			<td><a href="/cong/admin/contactDetail.do?idx=${item.idx}">${item.ctitle}</a></td>
			<td><button type="button" onclick="deletecontact(${item.idx})">삭제</button></td>
		</tr>
	</c:forEach>		
</table>
<ui:pagination paginationInfo="${pi}" jsFunction="page"/>
</body>
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
</html>