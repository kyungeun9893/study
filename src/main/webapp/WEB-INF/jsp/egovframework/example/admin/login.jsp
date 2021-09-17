<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../adminframe/header.jsp"></jsp:include>
</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">어드민 로그인 페이지</h3>
                    </div>
                    <div class="panel-body">
                        <form action="/cong/admin/loginProcess.do" method="post" name="loginForm">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="ID" name="idJsp" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="pwJsp" type="password" >
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="button" onclick="checkForm()" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../adminframe/footer.jsp"></jsp:include>
<!--  어드민 로그인 
<form action="/cong/admin/loginProcess.do" method="post" name="loginForm">
	아이디<input type="text" name="idJsp" placeholder="아이디를 입력해주세요"/><br/>
	비밀번호<input type="password" name="pwJsp" placeholder="비밀번호를 입력해주세요"/><br/>
	<button type="button" onclick="checkForm()">로그인</button>
</form>-->
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