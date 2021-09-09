<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
자주 묻는 질문 
<form action="/cong/admin/faqUpdateProcess.do" method="post" >
	<input type="hidden" name="idxJsp" value="${faqDetail.idx}">
	제목<input type="text" name="titleJsp" placeholder="제목을 입력해주세요" value="${faqDetail.title}"/><br>
	내용<textarea rows="20" cols="30" name="textJsp" value="${faqDetail.ftext}"></textarea>
	<input type="submit" value="수정"/>
</form>
<a href="/cong/admin/faqView.do">목록</a>
</body>
</html>