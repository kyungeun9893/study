<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>등록일 : ${contactDetail.cdate}</div>
<div>회사 명 : ${contactDetail.ctitle}</div>
<div>등록자 : ${contactDetail.name}</div>
<div>휴대폰 번호 : ${contactDetail.cphone}</div>
<div>전화 번호 : ${contactDetail.phone}</div>
<div>이메일 : ${contactDetail.email}</div>
<div>홈페이지 : ${contactDetail.homepage}</div>
<div>참고 링크1 : ${contactDetail.link1}</div>
<div>참고 링크2 : ${contactDetail.link2}</div>
<div>예산 : ${contactDetail.budget}</div>
<div>문의내용 : ${contactDetail.text}</div>

<a href="/cong/admin/contact.do">목록</a>
</body>
</html>