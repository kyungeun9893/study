<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>번호 : ${faqDetail.idx}</div>
<div>등록일 : ${faqDetail.fdate}</div>
<div>제목 : ${faqDetail.title}</div>
<div>내용 : ${faqDetail.ftext}</div>

<a href="/cong/admin/faqView.do">목록</a>
</body>
</html>