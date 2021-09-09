<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
어드민 로그인 
<form action="/cong/admin/loginProcess.do" method="post" name="loginForm">
	아이디<input type="text" name="idJsp" placeholder="아이디를 입력해주세요"/><br/>
	비밀번호<input type="password" name="pwJsp" placeholder="비밀번호를 입력해주세요"/><br/>
	<button type="button" onclick="checkForm()">로그인</button>
</form>
<script>
	var error = "${error}";
	if(error == 1 || error == '1'){
		alert("아이디 혹은 비밀번호를 입력해주세요")		
	}
	function checkForm(){
		let id = document.loginForm.idJsp.value;
		let pw = document.loginForm.pwJsp.value;
		if(id == '' || id == null){
			alert("아이디를 입력해주세요");
			return;
		}
		if(pw == '' || pw == null){
			alert("비밀번호를 입력해주세요");
			return;
		}
		document.loginForm.submit();
	}

</script>
</body>
</html>