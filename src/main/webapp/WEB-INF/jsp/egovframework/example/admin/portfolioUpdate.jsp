<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Portfolio
<form action="/cong/admin/portfolioProcess.do" method="post" enctype="multipart/form-data" >
	제목<input type="text" name="title" value="${portfolioDetail.title}"/><br>
	간략내용<textarea rows="20" cols="30" name="stext" value="${portfolioDetail.stext}"></textarea>
	개발내용<textarea rows="20" cols="30" name="dtext" value="${portfolioDetail.dtext}"></textarea>
	메인 이미지<input type="file" name="portfolio" multiple/>
	<input type="submit" value="수정"/>
</form>
</body>
</html>