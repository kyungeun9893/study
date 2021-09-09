<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
자주 묻는 질문 
<form action="/cong/admin/faqProcess.do" method="post" >
	제목<input type="text" name="titleJsp" placeholder="제목을 입력해주세요"/><br>
	내용<textarea rows="20" cols="30" name="textJsp"></textarea>
	<input type="submit" value="등록"/>

</form>
</body>
</html>