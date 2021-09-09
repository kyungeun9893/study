<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>번호 : ${portfolioDetail.idx}</div>
<div>등록일 : ${portfolioDetail.pdate}</div>
<div>제목 : ${portfolioDetail.title}</div>
<div>간략내용 : ${portfolioDetail.stext}</div>
<div>개발내용 : ${portfolioDetail.dtext}</div>

<a href="/cong/admin/portfolioView.do">목록</a>
</body>
</html>